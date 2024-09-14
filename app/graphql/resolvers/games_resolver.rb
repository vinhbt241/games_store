# frozen_string_literal: true

module Resolvers
  class GamesResolver < BaseResolver
    description 'A collection of genres'

    type [Types::GameType], null: false

    argument :genre_id, ID, required: false, description: 'Games from Genre UUID'

    def resolve(genre_id: nil)
      return Game.where(genre_id:) if genre_id.present?

      ::Game.all
    end
  end
end
