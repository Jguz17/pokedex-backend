class PokemonSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :abilities, :sprites, :height, :weight
end
