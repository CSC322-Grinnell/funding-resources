# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(email: 'admin@example.com', password: 'password', password_confirmation: 'password', admin: true) if Rails.env.development?

#<Resource id: nil, title: nil, description: "FUND TEST", amount: nil, source: nil, cp: nil,
Resource.create(title: 'Service & Social Innovation Grant', description: 'Social Service Grants through Grinnell', amount: '3000', cp: 'Kiera Wilson')
Resource.create(title: 'Summer Internship Funding Grants', description: 'Income supplementation for unpaid internships', amount: '1800', cp: 'Diego Rodriguez')
