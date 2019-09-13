class DashboardsController < ApplicationController
  def index
    @orders = policy_scope(Order).all
    @meals = policy_scope(Meal).all
    @new_orders = current_user.orders.where(completed: false)
    @complete_orders = current_user.orders.where(completed: true)
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
end
