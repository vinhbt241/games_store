# frozen_string_literal: true

module Types
  class GameType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :genre, GenreType, null: false
    field :id, ID, null: false
    field :name, String, null: false
    field :price, Integer, null: false
    field :release_date, GraphQL::Types::ISO8601Date, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
