restaurant1 = Restaurant.create!(name: 'Dumpling King', address: '33 Harrison Ave', city: 'Boston', state: 'MA', zip: '12111')
restaurant2 = Restaurant.create!(name: "Rock Bottom", address: "Beach street", city: "Boston", state: "MA", zip: "12112")

review1 = Review.create!(rating: 4, body: "The pork and leek is my favorite as I think it's a bit juicier than the other options", restaurant: restaurant1)
review2 = Review.create!(rating: 5, body: "Get the nachos!", restaurant: restaurant2)
