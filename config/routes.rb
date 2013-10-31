Crap::Application.routes.draw do
  root 'site#index'
  
  resources :persons
  
  scope :api do
    resources :animals, except: [ :new, :edit ], default: { format: :json }
  end
  
  # get 'persons' => 'persons#index' # list all persons
  # get 'persons/new' => 'persons#new' # form to add a new person
  # get 'persons/:id' => 'persons#show' # show one person
  # get 'persons/:id/edit' => 'persons#edit' # form to edit person
  # 
  # 
  # post 'persons' => 'persons#create' # create a new person
  # put 'persons/:id' => 'persons#update' # update a person
  # patch 'persons/:id' => 'persons#update' # update an attribute of a person
  # delete 'persons/:id' => 'persons#destroy' # delete a person
end
