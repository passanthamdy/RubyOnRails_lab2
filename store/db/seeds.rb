# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
role1 = Role.create({ name: 'User', description: 'read items' })
role2 = Role.create({ name: 'Seller ', description: 'read and create items and update and delete his own items' })
role3 = Role.create({ name: 'Admin  ', description: 'do any CRUD operation' })

user1 = User.create({ name: 'Passant', email: 'passnt@example.com', password: '123456', password_confirmation: '123456', role_id: role1.id })
user2 = User.create({ name: 'Menna  ', email: 'menna@example.com', password: '123456', password_confirmation: '123456', role_id: role2.id })
user3 = User.create({ name: 'Habiba', email: 'habiba@example.com', password: '123456', password_confirmation: '123456', role_id: role3.id })

item1 = Item.create({ name: 'Dell laptop', description: 'dell inspiration 3580', price: 7000, user_id: user2.id })
item2 = Item.create({ name: 'Macbook', description: 'macbook', price: 15000, user_id: user2.id })
item3 = Item.create({ name: 'Lenovo', description: 'lenovo', price: 9500, user_id: user3.id })
