# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'test', password: '123')
User.create(username: 'john', password: '123')

Pokemon.create(user_id: 2, name: 'bulba', abilities: 'chlorophyl', sprites: nil, height: 12, weight: 20)
Pokemon.create(user_id: 2, name: 'charr', abilities: 'explosion', sprites: nil, height: 15, weight: 21)
Pokemon.create(user_id: 1, name: 'squirt', abilities: 'weather', sprites: nil, height: 14, weight: 24)

Favorite.create(user_id: 2, pokemon_id: 1)
Favorite.create(user_id: 2, pokemon_id: 2)