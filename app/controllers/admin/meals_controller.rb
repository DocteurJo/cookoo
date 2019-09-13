class Admin::MealsController < ApplicationController
  def index
    @meals = Meal.where(cook_id: current_user)
  end
end
