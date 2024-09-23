# frozen_string_literal: true

class User < ApplicationRecord
  has_secure_password

  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }, presence: true, uniqueness: true

  has_many :purchases, dependent: :destroy
  has_many :purchased_games, through: :purchases, source: :game
end
