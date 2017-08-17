# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(username: "Frieda", email: "freida@hotmail.com" , password: "Frieda's password" )
user1.articles << Article.create(title: "Heroku", description: "Heroku is sometimes hard, and sometimes easy.")