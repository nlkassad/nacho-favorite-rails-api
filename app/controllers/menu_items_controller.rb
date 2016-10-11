class MenuItemsController < OpenReadController
  before_action :set_menu_item, only: [:show, :update, :destroy]

  # GET /menu_items
  # GET /menu_items.json
  def index
    @menu_items = MenuItem.all

    render json: @menu_items
  end

  # GET /menu_items/1
  # GET /menu_items/1.json
  def show
    render json: @menu_item
  end

  # POST /menu_items
  # POST /menu_items.json
  def create
    @menu_item = MenuItem.new(menu_item_params)

    if @menu_item.save
      render json: @menu_item, status: :created, location: @menu_item
    else
      render json: @menu_item.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /menu_items/1
  # PATCH/PUT /menu_items/1.json
  # def update
  #   @menu_item = MenuItem.find(params[:id])
  #
  #   if @menu_item.update(menu_item_params)
  #     head :no_content
  #   else
  #     render json: @menu_item.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /menu_items/1
  # DELETE /menu_items/1.json
  # def destroy
  #   @menu_item.destroy
  #
  #   head :no_content
  # end

  private

  def set_menu_item
    @menu_item = MenuItem.find(params[:id])
  end

  def menu_item_params
    params.require(:menu_item).permit(:restaurant_id, :dish_id)
  end
end
