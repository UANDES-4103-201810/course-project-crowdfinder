# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: "Rabi",
            first_name: "Benjamin",
            last_name: "Perez",
            email: "benja@benja.com",
            password: "password123",
            is_admin: "true")

User.create(username: "S2Global",
            first_name: "Francisco",
            last_name: "Alvarez",
            email: "fcoalvarez91@gmail.com",
            password: "s2global123",
            is_admin: "true")

User.create(username: "Monty",
            first_name: "Ignacio",
            last_name: "Carril",
            email: "monty@monty.monty",
            password: "montymonty1",
            is_admin: "false")

Category.create(name: "Game")
Category.create(name: "Book")