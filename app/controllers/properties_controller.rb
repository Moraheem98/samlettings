class PropertiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @properties = Property.all
    @properties_all = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      flash[:success] = "Your property Has been listed"
      redirect_to properties_path
    else
      render :new
    end
  end

  def edit
    @property = Property.find(params[:id])
  end

  def update
    @property = Property.find(params[:id])
    @property.update(property_params)
    redirect_to user_path(current_user)
  end

  def destroy
    @property = Property.find(params[:id])
    @property.destroy(property_params)
    redirect_to user_path(current_user)
  end

  private

  def property_params
    params.require(:property).permit(:property_type, :bedrooms, :bathrooms, :reception_rooms, :description, :price, :property_sub_type, :address)
  end
end
