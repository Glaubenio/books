# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { Faker::Name.name }
    author { Faker::Name.name }
    image { Faker::Internet.url }
    description { Faker::Lorem.sentence(word_count: 30) }
  end
end
