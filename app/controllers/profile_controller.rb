class ProfileController < ApplicationController

  before_action :set_user, only: [:show, :cars, :bookings, :trips, :edit]

  def show
  end

  def cars
    @cars = @user.cars
  end

  def bookings
    @cars = @user.cars
    @bookings = @cars.map {|car| car.bookings }.flatten

  end

  def trips
    @bookings = @user.bookings
  end

  def edit
    # raise
    set_user
  end

  def update
    set_user
    @user.update(user_params)
    redirect_to profile_path(@user)
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :phone_number, :email)
  end
end

