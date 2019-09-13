class Admin::MealsController < ApplicationController

  def index
    @meals = current_user.meals
    @user = current_user
  end
end
