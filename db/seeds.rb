# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'test', password: '123')
User.create(username: 'john', password: '123')

Pokemon.create(user_id: 2, dex_id: 150, name: 'mewtwo', types: ['psychic', 'normal'], sprites: 'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/150.png')
Pokemon.create(user_id: 2, name: 'dragonite')
Pokemon.create(user_id: 2, name: 'charmander')
Pokemon.create(user_id: 1, name: 'squirt')
Pokemon.create(user_id: 1, name: 'test')

Favorite.create(user_id: 2, pokemon_name: 'squirtle')
Favorite.create(user_id: 2, pokemon_name: 'pidgeot')