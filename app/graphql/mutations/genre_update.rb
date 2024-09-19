# frozen_string_literal: true

module Mutations
  class GenreUpdate < BaseMutation
    description 'Updates a genre by id'

    field :genre, Types::GenreType, null: false

    argument :genre_input, Types::GenreInputType, required: true
    argument :id, ID, required: true

    def resolve(id:, genre_input:)
      genre = ::Genre.find(id)
      unless genre.update(**genre_input)
        raise GraphQL::ExecutionError.new 'Error updating genre',
                                          extensions: genre.errors.to_hash
      end

      { genre: }
    end
  end
end
