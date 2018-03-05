class ReviewsController < ApplicationController

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
    restaurant_id = params[:restaurant_id]
    @restaurant = Restaurant.find(restaurant_id)
    @title = "Review Form for #{@restaurant.name}"
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = Review.new(review_params)
    @review.restaurant = @restaurant

    if @review.save
      flash[:notice] = "Review added successfully"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:alert] = "Failed to save review"
      @form_error = @review.errors.full_messages
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :body)
  end

end
