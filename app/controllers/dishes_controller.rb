class DishesController < ApplicationController
  def index
    @examples = Dish.all

    render json: @examples
  end
end
