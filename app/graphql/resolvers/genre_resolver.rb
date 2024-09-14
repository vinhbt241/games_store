# frozen_string_literal: true

module Resolvers
  class GenreResolver < BaseResolver
    description 'Details about a genre'

    type Types::GenreType, null: false
    argument :id, ID, description: 'Genre UUID'

    def resolve(id:)
      ::Genre.find(id)
    end
  end
end
