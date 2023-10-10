# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example.


# Jungle-rails Screenshots

!["Welcome page"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle1.png?raw=true)
!["Sign up page"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle2.png?raw=true)
!["Login with user after sign up"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle3.png?raw=true)
!["Products on page"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle4.png?raw=true)
!["Product description page and buy"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle5.png?raw=true)
!["Products in cart"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle6.png?raw=true)
!["Payment page"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle7.png?raw=true)
!["Admin Page"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle8.png?raw=true)
!["Admin dashboard"](https://github.com/sandeepgill62/jungle-rails/blob/master/docs/jungle9.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
