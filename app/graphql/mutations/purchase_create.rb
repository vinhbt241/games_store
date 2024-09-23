# frozen_string_literal: true

module Mutations
  class PurchaseCreate < BaseMutation
    description 'Creates a new purchase'

    field :game, Types::GameType, null: false

    argument :purchase_input, Types::PurchaseInputType, required: true

    def resolve(purchase_input:)
      game = Game.find(purchase_input[:game_id])
      purchase = ::Purchase.new(game:, user: context[:current_user])

      unless purchase.save
        raise GraphQL::ExecutionError.new 'Error creating purchase',
                                          extensions: purchase.errors.to_hash
      end

      { game: context[:current_user].purchased_games.find_by(id: purchase.game_id) }
    end
  end
end
