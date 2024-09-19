# frozen_string_literal: true

module Mutations
  class GameUpdate < BaseMutation
    description 'Updates a game by ID'

    field :game, Types::GameType, null: false

    argument :game_input, Types::GameInputType, required: true
    argument :id, ID, required: true

    def resolve(id:, game_input:)
      game = ::Game.find(id)
      unless game.update(**game_input)
        raise GraphQL::ExecutionError.new 'Error updating game',
                                          extensions: game.errors.to_hash
      end

      { game: }
    end
  end
end
