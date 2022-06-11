# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Role.create!
Role.create!(name: "admin")

User.create!(email: "user@test.com", password: "password", password_confirmation: "password", role_id: 2)
User.create!(email: "admin@test.com", password: "password", password_confirmation: "password", role_id: 1)
User.create!(email: "test@test.com", password: "password", password_confirmation: "password", role_id: 1)

Book.create!(title: "users book", description: "1111", author: "user", user_id: 1)
Book.create!(title: "admins first book", description: "1111", author: "admin", user_id: 2)
Book.create!(title: "admin second book", description: "1111", author: "admin", user_id: 2)