class StatesController < ApplicationController

  def index
    @states = State.all
  end

  def new
  end
  
  
  def update
    state = State.find_by(:id => params["id"])
    state.name = params["name"]

    state.save
    redirect_to "/states" 
  end
  
  
  def edit
    @state = State.find_by(:id => params["id"])
  end


  def create
    state = State.new
    state.name = params["name"]
    state.shortname = params["shortname"]
    state.save
    
    redirect_to "/states" # "/"
  end


  def destroy
    State.delete(params[:id])
    #Generator.where(:fuel_id => params[:id]).destroy_all
    redirect_to "/states"
  end

end