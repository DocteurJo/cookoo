class Admin::OrdersController < ApplicationController
  def index
    @orders = current_user.meals.orders
  end
end
