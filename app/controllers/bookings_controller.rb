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

  def create
    @car = Car.find(params[:car_id])
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = current_user
    if @booking.save
      redirect_to profile_my_trips_path(@booking)
    else
      render "cars/show"
    end
  end

  def destroy
    set_booking
    @booking.destroy
    redirect_to profile_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
