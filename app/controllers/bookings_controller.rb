class BookingsController < ApplicationController
  def create
    @sauna = Sauna.find(params[:sauna_id])
    @booking = Booking.new(booking_strong_params)
    @booking.sauna = @sauna
    @booking.user = current_user

    if @booking.save
      redirect_to booking_path(@booking)
    else
      @markers = [{
        lat: @sauna.latitude,
        lng: @sauna.longitude
      }]
      render "saunas/show"
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  # def destroy
  #   @dose = Dose.find(params[:id])
  #   @dose.destroy
  #   redirect_to cocktail_path(@dose.cocktail)
  # end
  private

  def booking_strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
