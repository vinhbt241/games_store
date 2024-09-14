# frozen_string_literal: true

5.times do
  genre = FactoryBot.create(:genre)
  rand(5..10).times do
    FactoryBot.create(:game, genre:)
  end
end
