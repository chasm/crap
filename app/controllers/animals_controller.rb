class AnimalsController < ApplicationController
  
  def index
    @animals = Animal.all.entries
    
    render json: @animals
  end
  
  def show
  end
  
  def create
  end
  
  def update
  end
  
  def destroy
    @animal = Animal.find_by(id: params[:id])
    @animal.delete
    
    head :no_content
  end
end