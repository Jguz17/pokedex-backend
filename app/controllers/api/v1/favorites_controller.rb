class Api::V1::FavoritesController < ApplicationController
    skip_before_action :authorized

    def index
        favorites = Favorite.all
        render json: favorites
    end
end
