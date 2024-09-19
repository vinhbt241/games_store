# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :game_create, mutation: Mutations::GameCreate
    field :game_delete, mutation: Mutations::GameDelete
    field :game_update, mutation: Mutations::GameUpdate

    field :genre_create, mutation: Mutations::GenreCreate
    field :genre_delete, mutation: Mutations::GenreDelete
    field :genre_update, mutation: Mutations::GenreUpdate
  end
end
