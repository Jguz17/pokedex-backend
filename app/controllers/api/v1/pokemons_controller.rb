class Api::V1::PokemonsController < ApplicationController
    skip_before_action :authorized
    
    def index
        pokemons = Pokemon.all
        render json: pokemons
    end

    def create
        user_id = params[:user_id]
        name = params[:name]
        types = params[:types]
        sprites = params[:sprites]

        pokemon = Pokemon.create(user_id: user_id, name: name, types: type, sprites: sprites)
        render json: pokemon
    end

    def edit
        pokemon = Pokemon.find(params[:id])
    end

    def update
        pokemon = Pokemon.find(params[:id])

        user_id = params[:user_id]
        name = params[:name]
        types = params[:types]
        sprites = params[:sprites]

        pokemon.create(user_id: user_id, name: name, types: type, sprites: sprites)
        render json: pokemon
    end

    def destroy
        Pokemon.find(params[:id]).destroy
        render json: {message: 'success'}
    end
end 
