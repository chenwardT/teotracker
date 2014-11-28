# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Organizations
10.times do
  organization = Organization.new
  organization.name = "#{Faker::Company.name} #{Faker::Company.suffix}"
  organization.logo_url = Faker::Company.logo
  organization.city = Faker::Address.city
  organization.street_address = Faker::Address.street_address
  organization.postal_code = Faker::Address.postcode
  organization.country = Faker::Address.country
  organization.save!
end

# Users
30.times do
  user = User.new
  user.email = Faker::Internet.email
  user.password = 'foobarbaz'
  user.password_confirmation = 'foobarbaz'
  user.last_sign_in_at = Faker::Date.backward(180)
  user.last_sign_in_ip = Faker::Internet.ip_v4_address
  user.organization_id = rand(11)
  user.first_name = Faker::Name.first_name
  user.last_name = Faker::Name.last_name
  user.phone = Faker::PhoneNumber.phone_number
  user.department = Faker::Commerce.department
  user.save!
end

# Products
20.times do
  product = Product.new
  product.name = Faker::App.name
  product.version = Faker::App.version
  product.save!
end

# Tickets
40.times do
  ticket = Ticket.new
  ticket.title = "#{Faker::Hacker.noun} #{Faker::Hacker.verb} #{Faker::Hacker.ingverb}"
  ticket.text = "#{Faker::Hacker.say_something_smart} #{Faker::Hacker.say_something_smart}"
  ticket.user_id = rand(31)
  ticket.is_open = rand(2)
  ticket.serial =  Faker::Number.number(10)
  ticket.product_id = rand(21)
  ticket.save!
end