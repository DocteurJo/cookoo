class MealsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :category ]

  def index
    @meals = policy_scope(Meal).all
  end

  def show
    @meal = Meal.find(params[:id])
    authorize @meal
    @order = @meal.orders.new
  end

  def new
    @meal = Meal.new
    authorize @meal
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.cook = current_user
    authorize @meal

    if @meal.save
      redirect_to meals_path
    else
      render :new
    end
  end

  def category
    @parameter = params[:search].capitalize
    @results = Meal.where(category: @parameter)

    authorize :meal, @meal
  end

  private

  def meal_params
    params.require(:meal).permit(:category, :title, :description, :price,
                                 :quantity, :photo, :cook)
  end
end
