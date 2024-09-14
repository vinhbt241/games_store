# frozen_string_literal: true

class Game < ApplicationRecord
  # validations
  validates :genre, presence: true
  validates :release_date, presence: true

  # associations
  belongs_to :genre
end
