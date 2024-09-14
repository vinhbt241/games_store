# frozen_string_literal: true

module Types
  class DestroyGenreAttributes < BaseInputObject
    description 'attributes for destroying a genre'

    argument :id, ID, 'genre ID'
  end
end
