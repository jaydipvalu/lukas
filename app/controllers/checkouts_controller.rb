class CheckoutsController < ApplicationController
  before_action :authenticate_user!
  def index
    @cars = Car.all
  end
  def show
    @cars = Car.find_by(id: params[:id])
  end
  def new
  end
end
