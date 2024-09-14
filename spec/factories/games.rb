# frozen_string_literal: true

FactoryBot.define do
  factory :game do
    name { Faker::Game.title }
    release_date { Faker::Date.between(from: 1.month.ago, to: Time.zone.today + 1.month) }
  end
end
