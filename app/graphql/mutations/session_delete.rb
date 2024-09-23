# frozen_string_literal: true

module Mutations
  class SessionDelete < BaseMutation
    description 'Deletes a session by ID'

    field :message, String, null: false

    def resolve
      context[:session][:token] = nil

      { message: 'Session deleted' }
    end
  end
end
