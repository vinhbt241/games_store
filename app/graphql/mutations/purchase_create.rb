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

    def ready?(purchase_input:)
      raise GraphQL::ExecutionError, 'User can not be determined' if context[:current_user].blank?

      game = Game.find(purchase_input[:game_id])

      return true unless game.release_date > Date.current && !context[:current_user].vip?

      raise GraphQL::ExecutionError, 'Only VIP member can pre-purchase games'
    end
  end
end
