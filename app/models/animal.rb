class Animal
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :id
  field :name
  field :number_of_legs, type: Integer
  field :born_on, type: Date
end