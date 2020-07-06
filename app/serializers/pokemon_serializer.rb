class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :dex_id, :name, :types, :sprites
  belongs_to :user
end
