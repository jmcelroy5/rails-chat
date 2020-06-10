# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u1 = User.create(username: 'matthew', password: 'password')
Message.create(user_id: u1.id, body: 'Hi')

u2 = User.create(username: 'mark', password: 'password')
Message.create(user_id: u2.id, body: 'Howdy')

u3 = User.create(username: 'luke', password: 'password')
Message.create(user_id: u3.id, body: 'Aloha')

u4 = User.create(username: 'john', password: 'password')
Message.create(user_id: u4.id, body: 'Hola')

u5 = User.create(username: 'jeebus', password: 'password')
Message.create(user_id: u5.id, body: 'Bonjour')

puts "DONE"

