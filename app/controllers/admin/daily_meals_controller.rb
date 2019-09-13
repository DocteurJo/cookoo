class Admin::DailyMealsController < ApplicationController
  def show
    @meal = Meal.find(params[:meal_id])
    @user = current_user
    @user.daily_meal = @meal
  end
end
