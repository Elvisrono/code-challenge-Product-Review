# code-challenge-Product-Review
For this assignment, we'll be working with an e-commerce domain. We'll be
focusing on the product reviews.

We have three models: `User`, `Review`, and `Product`.

For our purposes, a `Product` has many `User`s, a `User` has many `Products`s,
and a `Review` belongs to a `User` and to a `Product`.

`Product` - `User` is a many to many relationship.

## Topics

- Active Record Migrations
- Active Record Associations
- Class and Instance Methods
- Active Record Querying

### users Table

| Column | Type   |
| ------ | ------ |
| name   | String |

#### products Table

| Column | Type    |
| ------ | ------- |
| name   | String  |
| price  | Integer |

You will need to create the migration for the `reviews` table using the
attributes specified in the deliverables below.

##### Deliverables

Write the following methods in the classes in the files provided. Feel free to
build out any helper methods if needed.

Deliverables use the notation `#` for instance methods, and `.` for class
methods.

Remember: Active Record give your classes access to a lot of methods already!
Keep in mind what methods Active Record gives you access to on each of your
classes when you're approaching the deliverables below.

###### Migrations

Before working on the rest of the deliverables, you will need to create a
migration for the `reviews` table.

- A `Review` belongs to a `Product`, and a `Review` also belongs to a `User`. In
  your migration, create any columns your `reviews` table will need to establish
  these relationships.
- The `reviews` table should also have:
  - A `star_rating` column that stores an integer.
  - A `comment` column that stores a string.

After creating and running your migration, create your `Review` class, and use
the `seeds.rb` file to create `Review` instances so you can test your code.

**Once you've set up your `reviews` table**, work on building out the following
deliverables.

### Object Association Methods

Use Active Record association macros and Active Record query methods where
appropriate (i.e. `has_many`, `has_many through`, and `belongs_to`).

#### Review

- `Review#user`
  - returns the `User` instance for this Review
- `Review#product`
  - returns the `Product` instance for this Review

#### Product

- `Product#reviews`
  - returns a collection of all the Reviews for the Product
- `Product#users`
  - returns a collection of all the Users who reviewed the Product

#### User

- `User#reviews`
  - returns a collection of all the Reviews that the User has given
- `User#products`
  - returns a collection of all the Products that the User has reviewed

Use `rake console` and check that these methods work before proceeding. For
example, you should be able to call `User.first.products` and see a list of the
products for the first user in the database based on your seed data; and
`Review.first.user` should return the user for the first review in the database.

### Aggregate and Association Methods

#### Review

- `Review#print_review`
  - should `puts` to the terminal a string formatted as follows: `Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}`

#### Product

- `Product#leave_review(user, star_rating, comment)`
  - takes a `User` (an instance of the `User` class), a `star_rating` (integer), and a `comment` (string) as arguments, and creates a new `Review` in the database associated with this Product and the User
- `Product#print_all_reviews`
  - should `puts` to the terminal a string representing each review for this product
  - each review should be formatted as follows: `Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}`
- `Product#average_rating`
  - returns a `float` representing the average star rating for all reviews for this product

#### User

- `User#favorite_product`
  - returns the product instance that has the highest star rating from this user
- `User#remove_reviews(product)`
  - takes a `Product` (an instance of the `Product` class) and removes _all_ of this user's reviews for that product
  - you will have to delete any rows from the `reviews` table associated with this user and the product.

  ## Installation

To use this repo on your machine requires some simple steps

- Open a terminal / command line interface on your computer
- Clone the repo by using the following:

        git clone https://github.com/kericho/code-challenge-Product-Review.git

- Be patient as it creates a copy on your local machine for you.
- Change directory to the repo folder:

        cd code-challenge-Product-Review

- (Optional) Open it in ``Visual Studio Code``

        code .

- (Alternate Option) Open it in any editor of your choice.

- Run bundle install in the terminal to install the neccessary dependencies.

# Running the application

Running the application is very straight forward. You can use the following steps to run the app.


- Run the application on the terminal

      rake console

# Authors
This project was contributed to by:
- [Elvis Rono](https://github.com/kericho/)

# License
The project is licensed under Apache 2.0.
