# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(
    first_name: "aqsa",
    last_name: "altaf",
    email: "aqsaaltaf01@gmail.com",
    password: "aqsa01@",
    role: 'superadmin',
    phone_number: '93009197893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
)