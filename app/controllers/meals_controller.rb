class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
    @order = @meal.orders.new
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
