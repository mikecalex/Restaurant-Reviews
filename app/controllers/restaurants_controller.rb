class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @restaurant_reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new()
  end

  def create
    @restaurant = Restaurant.new(new_restaurant_params)

    if @restaurant.save
      flash[:notice] = "Restaurant added successfully"
      redirect_to restaurant_path(@restaurant)
    else
      @form_error = @restaurant.errors.full_messages
      render :new
    end
  end

  private

  def new_restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description)
  end



end
