class CarsController < ApplicationController
  def index
    @cars = Car.page(params[:page]).per(2)
    @cars = if params[:order] == 'high'
      @cars.high
    elsif params[:order] == 'low'
      @cars.low
    elsif params[:order] == 'a_to_z'
      @cars.a_to_z
    else
      @cars.z_to_a
    end
    #@cars.joins(:brand, :model).where('cars.name LIKE ? or brands.name LIKE ? or models.name LIke ?',"%#{params[:name]}%","%#{params[:name]}%","%#{params[:name]}%") if params[:name].present?
    @cars = @cars.where('name like ? or brand_id like ? or model_id like ?',"%#{params[:name]}%","%#{params[:name]}%","%#{params[:name]}%") if params[:name].present?
    @cars = @cars.where(brand_id: params[:brand_id]) if params[:brand_id].present?

  end
  def show
    @cars = Car.find_by(id: params[:id])
  end

  def car_params
    params.require(:car).permit(:name, :brand_id, :model_id, :version_id, :car_type_id, :rto_price, :on_road_price, :total_price,:image)
  end
end
