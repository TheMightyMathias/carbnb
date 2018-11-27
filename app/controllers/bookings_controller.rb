class BookingsController < ApplicationController
  def show
    set_booking
    @car = @booking.car
    @renter = @booking.user
  end

  def update
    set_booking
    @booking.validated = true
    @booking.save
    redirect_to booking_path(@booking.id)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
