# frozen_string_literal: true

module Resolvers
  class GenresResolver < BaseResolver
    description 'A collection of genres'

    type [Types::GenreType], null: false

    def resolve
      ::Genre.all
    end
  end
end
