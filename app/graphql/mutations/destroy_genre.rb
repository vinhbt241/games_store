# frozen_string_literal: true

module Mutations
  class DestroyGenre < BaseMutation
    description 'destroy a genre'

    null true
    argument :attributes, Types::DestroyGenreAttributes

    field :deleted_id, ID, null: false
    field :genre, Types::GenreType

    def resolve(attributes:)
      genre = Genre.find(attributes[:id])
      if genre.destroy
        {
          genre: nil,
          deleted_id: attributes[:id]
        }
      else
        {
          genre:,
          deleted_id: attributes[:id]
        }
      end
    end
  end
end
