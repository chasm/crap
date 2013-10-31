class PersonsController < ApplicationController
  # List all persons (show table of persons in HTML)
  def index
    @persons = Person.all.entries
  end
  
  # Show detail for a person with ID = params[:id] (in HTML)
  def show
    @person = Person.find_by(id: params[:id])
  end
  
  # Form for adding a new person (in HTML)
  def new
    @person = Person.new
    @personality_types = Person.personality_types
  end
  
  # POST to this to create a new person, then redirect to show
  def create
    @person = Person.create(person_params)
    
    redirect_to person_url(@person)
  end
  
  # Form for updating a person with ID = params[:id] (in HTML)
  def edit
    @person = Person.find_by(id: params[:id])
  end
  
  # PUT or PATCH to this to update person with ID = params[:id]
  # then redirect to show
  def update
    @person = Person.find_by(id: params[:id])
    
    @person.update_attributes(person_params)
    
    redirect_to person_url(@person)
  end
  
  # Destroy the person with ID = params[:id]
  # then redirect to index to list remaining persons
  def destroy
    @person = Person.find_by(id: params[:id])
    @person.destroy
    
    redirect_to persons_url
  end
  
  private
  
  def person_params
    params.require(:person).permit(
      :name, :age, :is_a_clown
    )
  end
end