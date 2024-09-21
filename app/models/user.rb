# frozen_string_literal: true

class User < ApplicationRecord
  MAILER_FROM_EMAIL = 'no-reply@example.com'

  has_secure_password

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true
end
