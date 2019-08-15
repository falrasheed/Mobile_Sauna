class BookingsController < ApplicationController

  def create
    @sauna = Sauna.find(params[:sauna_id])
    @booking = Booking.new(booking_strong_params)
    #@booking.start_date = @booking.start_date.first(10)
    @booking.total_price = @sauna.price * (@booking.end_date - @booking.start_date).to_i
    @booking.sauna = @sauna
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
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

  def total_price
    Booking.where("created_at >= ? AND created_at < ?", Booking.start_date, Booking.end_date).sum(:subtotal)
  end

  private

  def booking_strong_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
