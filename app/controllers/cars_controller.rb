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
    if @car.save
      redirect_to car_path(@car)
    else
      render :new
    end
  end

  def search
    # if params[:query]
    #   @cars = Car.where(location: params[:query][:location]).order("created_at DESC")
    #   @params = search_params
    # else
    #   @cars = Car.all.order('created_at DESC')
    # end

    @cars = Car.where.not(latitude: nil, longitude: nil)

    @markers = @cars.map do |car|
      {
        lng: car.longitude,
        lat: car.latitude,
         infoWindow: { content: render_to_string(partial: "/cars/map_window", locals: { car: car }) }
      }
    end
  end

    def show
      @booking = Booking.new
      set_car
      if params[:query]
        @starts_at = search_params[:starts_at]
        @ends_at = search_params[:ends_at]
        @booking.start_date = @starts_at
        @booking.end_date = @ends_at
      end
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
      params.require(:car).permit(:photos, :brand, :color, :year, :model, :location, :title, :price, :url)
    end

    def search_params
      params.require(:query).permit(:starts_at, :ends_at)
    end

    def set_car
      @car = Car.find(params[:id])
    end
  end
