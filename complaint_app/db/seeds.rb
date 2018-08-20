# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Admin",email: "admin@nitk.edu.in",password:"123456",password_confirmation: "123456",admin: true)
users = User.order(:created_at).take(6)
content = Faker::Lorem.sentence(5)
users.each { |user| user.microposts.create!(content: content) }