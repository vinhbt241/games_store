# frozen_string_literal: true

module Types
  class UpdateGenreAttributes < BaseInputObject
    description 'attributes for creating or updating a genre'

    argument :description, String, 'short description about the genre', required: false
    argument :id, ID, 'genre ID'
    argument :name, String, 'name of the genre', required: false
  end
end
