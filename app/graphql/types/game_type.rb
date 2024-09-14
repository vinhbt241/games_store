# frozen_string_literal: true

module Types
  class GameType < BaseObject
    description 'type for Game'

    field :genre, GenreType, null: false
    field :id, ID, null: false
    field :name, String, null: false
    field :release_date, GraphQL::Types::ISO8601Date, null: false
  end
end
