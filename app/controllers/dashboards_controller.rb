class DashboardsController < ApplicationController

  def index
    @orders = policy_scope(Order).all
    @meals = policy_scope(Meal).all
  end

  def update
    @user = current_user
    @meal = Meal.find(params[:cook][:daily_meal].to_i)
    @user.daily_meal = @meal
    authorize @user
    @user.save
    redirect_to dashboards_path
  end

end
