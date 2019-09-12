class DashboardsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index ]

  def index
    @orders = policy_scope(Order).all
    @meals = policy_scope(Meal).all
  end
end
