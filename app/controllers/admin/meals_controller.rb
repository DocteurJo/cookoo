class Admin::MealsController < ApplicationController

  def index
    @meals = current_user.meals
  end
end
