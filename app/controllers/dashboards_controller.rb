class DashboardsController < ApplicationController
  def index
    @orders = policy_scope(Order).all
    @meals = policy_scope(Meal).all
    @new_orders = new_orders
    @complete_orders = complete_orders
  end

  def update
    @user = current_user

    if meal_id.zero?
      @user.daily_meal = nil
    else
      @meal = Meal.find(params[:cook][:daily_meal].to_i)
      @user.daily_meal = @meal
    end

    authorize @user
    @user.save
    redirect_to dashboards_path
  end

  private

  def meal_id
    params[:cook][:daily_meal].to_i
  end

  def new_orders
    @daily_meal = current_user.daily_meal_id
    if @daily_meal.nil?
      @new_orders = []
    else
      @meal = Meal.find(@daily_meal.to_i)
      @new_orders = @meal.orders.where(completed: false)
    end
    @new_orders
  end

  def complete_orders
    @daily_meal = current_user.daily_meal_id
    if @daily_meal.nil?
      @complete_orders = []
    else
      @meal = Meal.find(@daily_meal.to_i)
      @complete_orders = @meal.orders.where(completed: true)
    end
    @complete_orders
  end
end
