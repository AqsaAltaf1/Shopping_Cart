# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!([
    {
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
  },
  {
    first_name: "mkds",
    last_name: "altaf",
    email: "mkds02@gmail.com",
    password: "aqsa123",
    role: 'seller',
    phone_number: '43009197893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
  },
  {
    first_name: "sami",
    last_name: "altaf",
    email: "sami03@gmail.com",
    password: "aqsa123",
    role: 'seller',
    phone_number: '430097893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
  },
  {

    first_name: "sajal",
    last_name: "ali",
    email: "sajal04@gmail.com",
    password: "aqsa123",
    role: 'seller',
    phone_number: '43009197893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
    },
    {
    first_name: "alishba",
    last_name: "altaf",
    email: "alishba05@gmail.com",
    password: "aqsa123",
    role: 'seller',
    phone_number: '43009197893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
    },
    {
    first_name: "saria",
    last_name: "khanum",
    email: "sariya06@gmail.com",
    password: "aqsa123",
    role: 'buyer',
    phone_number: '4300917893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
    },
    {
    first_name: "altaf",
    last_name: "khan",
    email: "altaf07@gmail.com",
    password: "aqsa123",
    role: 'buyer',
    phone_number: '430091893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
    },
    {
    first_name: "zahid",
    last_name: "khan",
    email: "zahid07@gmail.com",
    password: "aqsa123",
    role: 'buyer',
    phone_number: '4300917893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
    },
    {
    first_name: "saima",
    last_name: "khanum",
    email: "saima08@gmail.com",
    password: "aqsa123",
    role: 'buyer',
    phone_number: '4300917893',
    address: 'lahore',
    city: 'lahore',
    country: 'Pakistan',
    status: 'active'
    }
])

Category.create!([
    {
        name: 'fashion'
    },
    {
        name: 'furniture'
    },
    {
        name: 'shoes'
    },
    {
        name: 'kitchen'
    },
    {
        name: 'dress'
    }
])
