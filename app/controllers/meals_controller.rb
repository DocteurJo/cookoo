class MealsController < ApplicationController
  def index
    @meal = Meal.all
  end

  def show
    @meals = Meal.find(params[:id])
  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to meal_path(@meal)
    else
      render :new
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:category, :title, :description, :price,
                                 :quantity, :photo, :cook)
  end
end