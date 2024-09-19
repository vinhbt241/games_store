# frozen_string_literal: true

module Mutations
  class GenreCreate < BaseMutation
    description "Creates a new genre"

    field :genre, Types::GenreType, null: false

    argument :genre_input, Types::GenreInputType, required: true

    def resolve(genre_input:)
      genre = ::Genre.new(**genre_input)
      raise GraphQL::ExecutionError.new "Error creating genre", extensions: genre.errors.to_hash unless genre.save

      { genre: genre }
    end
  end
end
