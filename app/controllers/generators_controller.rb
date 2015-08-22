class GeneratorsController < ApplicationController


  def index
    if params["keyword"].present?
      k = params["keyword"].strip
      @generators = Generator.where("queue LIKE ?", "%#{k}%")
    else
      @generators = Generator.all
    end
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
    generator.fuel_id = params["fuel_id"]
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
    redirect_to "/generators"
  end

end
