# frozen_string_literal: true

module Mutations
  class SessionCreate < BaseMutation
    description 'Creates a new session'

    field :token, String, null: true
    field :user, Types::UserType, null: true

    argument :credentials, Types::UserInputType, required: true

    def resolve(credentials:)
      user = User.find_by(email: credentials[:email])

      if user.blank? || !user.authenticate(credentials[:password])
        raise GraphQL::ExecutionError.new 'Credentials invalid',
                                          'Incorrect email or password'
      end

      crypt = ActiveSupport::MessageEncryptor.new(Rails.application.credentials.secret_key_base.byteslice(0..31))
      token = crypt.encrypt_and_sign("user-id:#{user.id}")
      context[:session][:token] = token

      { user:, token: }
    end
  end
end
