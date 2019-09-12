class OrdersController < ApplicationController
  def index
    @orders = policy_scope(Order).all
  end

  def show
    @order = Order.find(params[:id])
    @meal = @order.meal
    @cooks = Cook.geocoded
    @cook = @meal.cook
    @marker = {
      lat: @cook.latitude,
      lng: @cook.longitude
    }

    authorize @order
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @order = @meal.orders.new(order_params)
    @order.user = current_user
    authorize @order
    @order.save
    redirect_to order_path(@order)
  end

  def review_save
    @order = Order.find(params[:id])
    @order.rating = params[:order][:rating]
    @order.review = params[:order][:review]
    authorize @order
    @order.save
    redirect_to order_path
  end

  private

  def order_params
    params.require(:order).permit(:time, :quantity, :rating, :review)
  end

end
