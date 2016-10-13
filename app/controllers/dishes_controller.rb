class DishesController < OpenReadController
  before_action :set_dish, only: [:show]

  # GET /dishes
  # GET /dishes.json
  def index
    @dishes = Dish.all

    render json: @dishes
  end

  # GET /dishes/1
  # GET /dishes/1.json
  def show
    render json: @dish
  end

  # POST /dishes
  # POST /dishes.json
  def create
    @dish = Dish.new(dish_params)

    if @dish.save
      render json: @dish, status: :created, location: @dish
    else
      render json: @dish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dishes/1
  # PATCH/PUT /dishes/1.json
  # def update
  #   @dish = Dish.find(params[:id])
  #
  #   if @dish.update(dish_params)
  #     head :no_content
  #   else
  #     render json: @dish.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /dishes/1
  # DELETE /dishes/1.json
  # def destroy
  #   @dish.destroy
  #
  #   head :no_content
  # end

  private

  def set_dish
    @dish = Dish.find(params[:id])
  end

  def dish_params
    params.require(:dish).permit(:name)
  end
end
