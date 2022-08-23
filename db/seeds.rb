# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Alumn.create([{name: 'Stephen Smith'}, {name: 'Mark Williams'}, {name: 'Maria Brown'}, {name: 'Pablo Martínez'}, {name: 'Barbara Hill'}])

Course.create([{name: 'Math'}, {name: 'Spanish'}, {name: 'Sports'}, {name: 'Chemistry'}])

Teacher.create({name: 'Juan', email: 'test@mail.com', password: 'password', password_confirmation: 'password'})