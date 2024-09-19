# frozen_string_literal: true

module Types
  class GameInputType < Types::BaseInputObject
    argument :created_at, GraphQL::Types::ISO8601DateTime, required: false
    argument :genre_id, ID, required: false
    argument :id, ID, required: false
    argument :name, String, required: false
    argument :release_date, GraphQL::Types::ISO8601Date, required: false
    argument :updated_at, GraphQL::Types::ISO8601DateTime, required: false
  end
end
