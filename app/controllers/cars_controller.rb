class CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
    @user = current_user
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    @car.save
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def search
    if params[:query]
      @cars = Car.where(location: params[:query][:location]).order("created_at DESC")
      @params = search_params
    else
      @cars = Car.all.order('created_at DESC')
    end
  end

  def show
    set_car
    @starts_at = params[:starts_at]
    @ends_at = params[:ends_at]
    @car = Car.find(params[:id])
    @car.user = current_user

  end

  def edit
    set_car
  end

  def update
    set_car
    @car.update(car_params)
    redirect_to car_path(@car)
  end

  def destroy
    set_car
    @car.destroy
    redirect_to root_path
  end

  private

  def car_params
    params.require(:car).permit(:photos, :brand, :color, :year, :model, :location, :title, :price)
  end

  def search_params
    params.require(:query).permit(:starts_at, :ends_at)
  end
end

def set_car
  @car = Car.find(params[:id])
end
