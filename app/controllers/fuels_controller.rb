class FuelsController < ApplicationController

  def index
    @fuels = Fuel.all
  end

  def new
  end
  
  
  def update
    fuel = Fuel.find_by(:id => params["id"])
    fuel.fueltype = params["fueltype"]
    fuel.availability = params["availability"]
    fuel.linktoimage = params["linktoimage"]
    fuel.save
    redirect_to "/fuels" 
  end
  
  
  def edit
    @fuel = Fuel.find_by(:id => params["id"])
  end


  def create
    fuel = Fuel.new
    fuel.fueltype = params["fueltype"]
    fuel.availability = params["availability"]
    fuel.linktoimage = params["linktoimage"]
    fuel.save
    
    redirect_to "/fuels" # "/"
  end

  def show
    @fuel = Fuel.find_by(:id => params["id"])
  end

  def destroy
    Fuel.delete(params[:id])
    Generator.where(:fuel_id => params[:id]).destroy_all
    redirect_to "/fuels"
  end

end