class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
  end

  def create
    @meal = Meal.find(params[:meal_id])
    @order = @meal.orders.new(order_params)
    @order.user = current_user
    @order.save
    redirect_to order_path(@order)
  end

  private

  def order_params
    params.require(:order).permit(:time, :quantity)
  end
end
