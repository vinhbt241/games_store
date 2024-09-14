# frozen_string_literal: true

module Types
  class GenreType < BaseObject
    description 'Game genre'

    field :description, String, description: 'short description about the genre'
    field :games, [Types::GameType], description: 'games belong to this genre'
    field :id, ID, null: false
    field :name, String, null: false
  end
end
