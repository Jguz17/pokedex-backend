# frozen_string_literal: true

class User < ApplicationRecord
  has_many :pokemons
  has_many :favorites
  has_secure_password

  validates :username, presence: true
end
