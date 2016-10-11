class RestaurantsController < OpenReadController
  before_action :set_restaurant, only: [:show, :update, :destroy]

  # GET /restaurants
  # GET /restaurants.json
  def index
    @restaurants = Restaurant.all

    render json: @restaurants
  end

  # GET /restaurants/1
  # GET /restaurants/1.json
  def show
    render json: @restaurant
  end

  # POST /restaurants
  # POST /restaurants.json
  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: @restaurant
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /restaurants/1
  # PATCH/PUT /restaurants/1.json
  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #
  #   if @restaurant.update(restaurant_params)
  #     head :no_content
  #   else
  #     render json: @restaurant.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /restaurants/1
  # DELETE /restaurants/1.json
  # def destroy
  #   @restaurant.destroy
  #
  #   head :no_content
  # end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city)
  end
end
