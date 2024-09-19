# frozen_string_literal: true

module Mutations
  class GameDelete < BaseMutation
    description 'Deletes a game by ID'

    field :game, Types::GameType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      game = ::Game.find(id)
      raise GraphQL::ExecutionError.new 'Error deleting game', extensions: game.errors.to_hash unless game.destroy!

      { game: }
    end
  end
end
