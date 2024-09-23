# frozen_string_literal: true

module Resolvers
  class PurchasedGamesResolver < BaseResolver
    description 'purchased game collection of user'

    type [Types::GameType], null: false

    def resolve
      raise GraphQL::ExecutionError, 'User can not be determined' if context[:current_user].blank?

      context[:current_user].purchased_games
    end
  end
end
