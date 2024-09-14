# frozen_string_literal: true

class Genre < ApplicationRecord
  # validations
  validates :name, presence: true, uniqueness: true
end
