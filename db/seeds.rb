# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all
Author.destroy_all
Magazine.destroy_all

a1 = Author.create(name: "Bob", age: 45)
a2 = Author.create(name: "Diana", age: 22)

m1 = Magazine.create(name: "Entertainment Weekly", category: "Entertainment")
m2 = Magazine.create(name: "Oprah Magazine", category: "Lifestyle")
m3 = Magazine.create(name: "Women's Health", category: "Fitness")

Article.create(title: "Best Movies", magazine: m1, author: a2)
Article.create(title: "Best Books", magazine: m2, author: a1)
Article.create(title: "Best Exercises", magazine: m3, author: a2)