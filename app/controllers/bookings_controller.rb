class BookingsController < ApplicationController
  def new
    @sauna = Sauna.find(params[:sauna_id])
    @booking = Booking.new
  end

  def create
    @sauna = Sauna.find(params[:sauna_id])
    @booking = Booking.new(booking_strong_params)
    @booking.sauna = @sauna
    @sauna.user = current_user
    if @booking.save
      redirect_to sauna_path(@booking.sauna)
    else
      render :new
    end
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
