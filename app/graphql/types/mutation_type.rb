# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_genre, mutation: Mutations::CreateGenre
    field :destroy_genre, mutation: Mutations::DestroyGenre
    field :update_genre, mutation: Mutations::UpdateGenre
  end
end
