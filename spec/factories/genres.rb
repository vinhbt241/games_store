# frozen_string_literal: true

FactoryBot.define do
  factory :genre do
    name { Faker::Game.unique.genre }
    description { Faker::Lorem.paragraph }
  end
end
