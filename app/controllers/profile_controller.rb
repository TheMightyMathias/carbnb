class ProfileController < ApplicationController

before_action :set_user, only: [:show, :cars, :bookings, :trips]

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

  private

  def set_user
    @user = User.find(current_user.id)
  end
end
