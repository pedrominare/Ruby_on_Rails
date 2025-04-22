# PetShop Website

- The project is about a pet subscription in a website, including the pet's name, age, size and more features.
- It requires user authentication.
- It's a CRUD project.
- Ruby version is 2.7.0p0, Rail version 5.2.0. It runs in Ubuntu 20.04.4 LTS.
- MySQL in version 8.0.30-0

# creation process
- rails _5.2.0_ new petshop_auth -d=mysql
- bundle-install
- rails generate bootstrap:install static
- create db tables with rake db: create
- rails generate scaffold animal raca:string nome:string idade:integer
- rails db:migrate
- Devise GEM used for authentication: bundle install + rails g devise:install
- Associate tables with migration: rake db:migrate + has_many :animals in app/models/user.rb and belongs_to :user in app/models/animal.rb.
- before_action :authenticate_user! in app/controllers/animals_controller.rb

# run application
- rails s

Link to video to show the project running: https://youtu.be/2z88z967RgE

