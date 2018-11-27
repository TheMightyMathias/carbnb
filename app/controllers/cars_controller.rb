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

# <<<<<<< searchbarcontinued
#     def search
#       @cars = Car.all
#       if params[:search]
#         @cars = Car.search(params[:search]).order("created_at DESC")
#       else
#         @cars = Car.all.order('created_at DESC')
#       end
#     end
# =======
  def show
    set_car
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
    params.require(:car).permit(:photos, :brand, :color, :year, :model, :location)
  end
end

def set_car
  @car = Car.find(params[:id])
end
