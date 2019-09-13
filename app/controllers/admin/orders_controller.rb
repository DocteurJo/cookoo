class Admin::OrdersController < ApplicationController
  def index
    @cook_orders = current_user.meals.orders
    @orders = @cook_orders.sort_by(:time)
  end
end
