class CarsController < ApplicationController
  def new
    @user = User.find(params[:user_id])
    @dose = Dose.new
  end

def create
    @car = Car.new(car_params)
    @user = User.find(params[:user_id])
    @car.user = @user
    @car.save
    if @car.save
      redirect_to user_path(@user)
    else
      render :new
    end
  end

 def index
  @cars = Car.all
end

  private

  def car_params
    params.require(:car).permit(:user_id, :photos, :brand, :color, :year, :model, :location)
  end
end

