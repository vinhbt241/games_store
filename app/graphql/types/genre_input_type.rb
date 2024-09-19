# frozen_string_literal: true

module Types
  class GenreInputType < Types::BaseInputObject
    argument :description, String, required: false
    argument :id, ID, required: false
    argument :name, String, required: false
  end
end
