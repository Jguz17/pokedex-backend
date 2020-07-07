class Api::V1::PokemonsController < ApplicationController
    skip_before_action :authorized
    
    def index
        pokemons = Pokemon.all
        render json: pokemons
    end

    def create
        user_id = params[:user_id]
        name = params[:name]
        dex_id = params[:dex_id]
        types = params[:types]
        sprites = params[:sprites]

        pokemon = Pokemon.create(user_id: user_id, name: name, dex_id: dex_id, types: types, sprites: sprites)
        render json: pokemon
    end

    def edit
        pokemon = Pokemon.find(params[:id])
    end

    def update
        pokemon = Pokemon.find(params[:id])

        name = params[:name]

        pokemon.update(name: name)
        render json: pokemon
    end

    def destroy
        Pokemon.find(params[:id]).destroy
        render json: {message: 'success'}
    end
end 