# frozen_string_literal: true

module Types
  class CreateGenreAttributes < BaseInputObject
    description 'attributes for creating or updating a genre'

    argument :description, String, 'short description about the genre', required: false
    argument :name, String, 'name of the genre'
  end
end
