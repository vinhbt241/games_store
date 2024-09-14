# frozen_string_literal: true

module Resolvers
  class GameResolver < BaseResolver
    description 'Details about a game'

    type Types::GameType, null: false
    argument :id, ID, description: 'Game UUID'

    def resolve(id:)
      ::Game.find(id)
    end
  end
end
