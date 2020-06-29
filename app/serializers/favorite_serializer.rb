class FavoriteSerializer < ActiveModel::Serializer
  attributes :id, :user, :pokemon_name, :types, :sprites
  belongs_to :user
end
