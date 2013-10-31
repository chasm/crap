Animal.destroy_all

Animal.create([
  {
    id: SecureRandom.urlsafe_base64,
    name: "Rover",
    number_of_legs: 4,
    born_on: Date.new(2008,3,27)
  },
  {
    id: SecureRandom.urlsafe_base64,
    name: "Fluffy",
    number_of_legs: 4,
    born_on: Date.new(2006,5,17)
  },
  {
    id: SecureRandom.urlsafe_base64,
    name: "Spot",
    number_of_legs: 4,
    born_on: Date.new(2011,12,25)
  }
])