# frozen_string_literal: true

module Types
  class PurchaseInputType < Types::BaseInputObject
    argument :game_id, ID, required: false
  end
end
