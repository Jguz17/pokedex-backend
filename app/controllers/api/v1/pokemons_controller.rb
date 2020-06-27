class Api::V1::PokemonsController < ApplicationController
    skip_before_action :authorized
    
    def index
        pokemons = Pokemon.all
        render json: pokemons
    end
end
