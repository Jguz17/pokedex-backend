class Api::V1::FavoritesController < ApplicationController
    skip_before_action :authorized

    def index
        favorites = Favorite.all
        render json: favorites
    end

    def create 
        user_id = params[:user_id]
        pokemon_name = params[:pokemon_name]
        types = params[:types]
        sprites = params[:sprites]

        favorite = Favorite.create(user_id: user_id, pokemon_name: pokemon_name, types: types, sprites: sprites)
        render json: favorite
    end

    def destroy
        Favorite.find(params[:id]).destroy
        render json: {message: 'success'}
    end
end
