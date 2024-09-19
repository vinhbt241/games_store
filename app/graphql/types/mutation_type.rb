# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :genre_create, mutation: Mutations::GenreCreate
    field :genre_delete, mutation: Mutations::GenreDelete
    field :genre_update, mutation: Mutations::GenreUpdate
  end
end
