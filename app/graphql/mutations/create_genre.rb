# frozen_string_literal: true

module Mutations
  class CreateGenre < BaseMutation
    description 'create genre'

    null true
    argument :attributes, Types::CreateGenreAttributes

    field :errors, [String], null: false
    field :genre, Types::GenreType

    def resolve(attributes:)
      genre = Genre.new(name: attributes[:name], description: attributes[:description])

      if genre.save
        {
          genre:,
          errors: []
        }
      else
        {
          genre: nil,
          errors: genre.errors.full_messages
        }
      end
    end
  end
end
