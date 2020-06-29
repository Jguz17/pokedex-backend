class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :sprites
  belongs_to :user
end
