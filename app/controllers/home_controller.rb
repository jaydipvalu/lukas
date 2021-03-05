class HomeController < ApplicationController
  def index
    @cars = Car.all
    @cars = @cars.where('name like ? or brand_id like ? or model_id like ?',
      "%#{params[:name]}%","%#{params[:name]}%","%#{params[:name]}%") if params[:name].present?
  end
end
