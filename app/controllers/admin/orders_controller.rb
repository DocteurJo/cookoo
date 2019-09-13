class Admin::OrdersController < ApplicationController
  def index
    @daily_meal = current_user.daily_meal_id
    @cook_orders = @daily_meal.orders
    @orders = @cook_orders.sort_by(:completed)
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    @order.save
    redirect_to dashboards_path
  end

  private

  def order_params
    params.require(:order).permit(:time, :quantity, :completed)
  end
end
