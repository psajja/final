class GeneratorsController < ApplicationController

  def index
    @generators = Generator.all
  end

  def new
  end
  
  
  def update
    generator = Generator.find_by(:id => params["id"])
    generator.queue = params[:queue]
    generator.project_name = params[:projectname]
    generator.mw = params[:mw]
    generator.inservice_date = params[:inservicedate]
    generator.fueltype = params[:fueltype]
    generator.county = params[:county]
    generator.state = params[:state]
    generator.save
    redirect_to root_url
  end
  
  
  def edit
    @generator = Generator.find_by(:id => params["id"])
  end


  def create
    generator = Generator.new
    generator.queue = params["queue"]
    generator.project_name = params["projectname"]
    generator.mw = params["mw"]
    generator.inservice_date = params["inservicedate"]
    generator.fueltype = params["fueltype"]
    generator.county = params["county"]
    generator.state = params["state"]
    generator.save
    
    redirect_to root_url # "/"
  end

  def show
    @generator = Generator.find_by(:id => params["id"])
  end

  def destroy
    Generator.delete(params[:id])
    redirect_to "/generator"
  end

end
