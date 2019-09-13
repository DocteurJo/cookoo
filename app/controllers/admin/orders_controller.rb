class Admin::OrdersController < ApplicationController
  def index
    @cook_orders = current_user.meals.orders
    @orders = @cook_orders.sort_by(:time)
  end

  def update
    @order = Order.find(params[:id])
    authorize @order
    @order.update(task_params)
  end

  private

  def task_params
    arams.require(:order).permit(:time, :quantity, :completed)
  end
end
