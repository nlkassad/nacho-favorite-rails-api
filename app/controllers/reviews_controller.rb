class ReviewsController < ProtectedController
  before_action :set_review, only: [:show, :update, :destroy]
  # before_filter :require_permission, only: :listmyreviews

  # skip_before_action :authenticate, only: [:index]

  # GET /reviews
  # GET /reviews.json
  def index
    @reviews = Review.all

    render json: @reviews
  end

  # GET /reviews/1
  # GET /reviews/1.json
  def show
    render json: @review
  end

  # POST /reviews
  # POST /reviews.json
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id if current_user

    if @review.save
      render json: @review, status: :created, location: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /reviews/1
  # PATCH/PUT /reviews/1.json
  def update
    @review = Review.find(params[:id])

    if @review.update(review_params)
      head :no_content
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  # DELETE /reviews/1
  # DELETE /reviews/1.json
  def destroy
    @review.destroy

    head :no_content
  end

  def listmyreviews
    @reviews = Review.where(user_id: current_user.id)

    render json: @reviews
  end

  private

  def set_review
    @review = Review.find(params[:id])
  end

  def review_params
    params.require(:review).permit(:user_id, :menu_item_id, :rating, :note)
  end

  # def require_permission
  #   if current_user != Review.find(params[:id]).user
  #     #Or do something else here
  #   end
  # end
end
