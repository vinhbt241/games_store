# frozen_string_literal: true

module Mutations
  class UpdateGenre < BaseMutation
    description 'update genre'

    argument :attributes, Types::UpdateGenreAttributes

    field :errors, [String], null: false
    field :genre, Types::GenreType

    def resolve(attributes:)
      genre = Genre.find(attributes[:id])
      genre.update(genre_params(attributes:))
      {
        genre:,
        errors: genre.errors.full_messages
      }
    end

    def genre_params(attributes:)
      {
        name: attributes[:name],
        description: attributes[:description]
      }.compact
    end
  end
end
