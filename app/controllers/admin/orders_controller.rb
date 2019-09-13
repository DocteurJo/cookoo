class Admin::OrdersController < ApplicationController
  def index
    @cook_orders = current_user.meals.orders
    @orders = @cook_orders.sort_by(:time)
  end

  def update
    @cook_orders = current_user.meals.orders
    @order = @cook_orders.find(params[:id])
    authorize @order
    @order.update(order_params)
  end

  private

  def order_params
    params.require(:order).permit(:time, :quantity, :completed)
  end
end
