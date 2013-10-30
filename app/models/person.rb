class Person
  include Mongoid::Document
  
  field :name
  field :age, type: Integer
  field :is_a_clown, type: Boolean, default: false
end