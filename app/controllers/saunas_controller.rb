class SaunasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @sauna = Sauna.new
    # get me all the saunaus with a location(coordinates)
    @saunas = Sauna.geocoded

    @markers = @saunas.map do |s|
      {
        lat: s.latitude,
        lng: s.longitude
      }
    end
    if params[:query].present?
      sql_query = " \
        saunas.title @@ :query \
        OR saunas.description @@ :query \
        OR saunas.address @@ :query \
      "
      # if there is a query, filter all th saunas with a location based on the query
      @saunas = @saunas.where(sql_query, query: "%#{params[:query]}%")
    end

    # if params[:capacity].present?
    #   @saunas = @saunas.where("capacity > ?", params[:capacity])
    # end
  end

  def new
    @sauna = Sauna.new
  end

  def create
    @sauna = Sauna.new(sauna_strong_params)
    @sauna.user = current_user
    if @sauna.save
      redirect_to sauna_path(@sauna)
    else
      render :new
    end
  end

  def show
    @sauna = Sauna.find(params[:id])
    @markers = [{
        lat: @sauna.latitude,
        lng: @sauna.longitude
      }]
    @booking = Booking.new
  end

  def edit
    @sauna = Sauna.find(params[:id])
  end

  def update
    @sauna = Sauna.find(params[:id])
    @sauna.update(sauna_strong_params)
    redirect_to sauna_path(@sauna)
  end

  def destroy
    @sauna = Sauna.find(params[:id])
    @sauna.destroy
    redirect_to sauna_path(@user.sauna)
  end

  private

  def sauna_strong_params
    params.require(:sauna).permit(:address, :description, :capacity, :price, :photo, :title)
  end
end
