user1 = User.create(name: "Elvis Rono")
user2 = User.create(name: "Weghorst werk")
user3 = User.create(name: "Daniel kimani")
user4 = User.create(name: "Njoki waimami")
user5 = User.create(name: "Eliud nabi")

product1 = Product.create(name: "Blue band", price: 466)
product2 = Product.create(name: "Bread", price: 100)
product3 = Product.create(name: "Pizza", price: 500)
product4 = Product.create(name: "Toyoya", price: 2400)
product5 = Product.create(name: "Cooking oil", price: 999)
product6 = Product.create(name: "Baking powder", price: 100)

Review.create(user: user1, product: product1, star_rating: 4, comment: "Great product")
Review.create(user: user1, product: product2, star_rating: 3, comment: "Good product")
Review.create(user: user2, product: product1, star_rating: 5, comment: "Amazing product")
Review.create(user: user2, product: product3, star_rating: 2, comment: "Average")


