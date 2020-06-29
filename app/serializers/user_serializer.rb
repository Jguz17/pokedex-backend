class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  has_many :pokemons
  has_many :favorites
end
