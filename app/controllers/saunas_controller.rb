class SaunasController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @saunas = Sauna.all
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
    @booking = Booking.new
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
