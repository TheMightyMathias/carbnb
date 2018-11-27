class ProfileController < ApplicationController

before_action :set_user, only: [:show, :cars, :bookings]

  def show
  end

  def cars
    @cars = @user.cars
  end

  def bookings
    @bookings = @user.bookings
  end

  private

  def set_user
    @user = User.find(current_user.id)
  end
end
