class Admin::OrdersController < ApplicationController
  def index
    @cook_orders = current_user.meals.orders
    @orders = @cook_orders.sort_by(:time)
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
