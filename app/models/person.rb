class Person
  include Mongoid::Document
  
  def self.personality_types
    ["Good", "Bad", "Ugly"]
  end
  
  field :name
  field :personality
  field :age, type: Integer
  field :is_a_clown, type: Mongoid::Boolean, default: false
  
  validates :personality, inclusion: { in: Person.personality_types } 
end