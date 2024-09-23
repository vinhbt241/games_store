# frozen_string_literal: true

module Types
  class GameInputType < Types::BaseInputObject
    argument :genre_id, ID, required: false
    argument :name, String, required: false
    argument :price, Integer, required: false
    argument :release_date, GraphQL::Types::ISO8601Date, required: false
  end
end
