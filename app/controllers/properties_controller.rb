class PropertiesController < ApplicationController

  def index
    @properties = Property.all
  end


  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      flash[:notice] = "Property saved!"
      redirect_to properties_path
    else
      render :new
    end
  end

private
  def property_params
    params.require(:property).permit(:name, :description)
  end

end
