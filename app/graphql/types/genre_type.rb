# frozen_string_literal: true

module Types
  class GenreType < Types::BaseObject
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :description, String
    field :games, [Types::GameType]
    field :id, ID, null: false
    field :name, String, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
