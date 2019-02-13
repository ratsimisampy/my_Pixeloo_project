# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    password_faker = Faker::Internet.password
    password               { password_faker }
    password_confirmation  { password_faker }
    email                  { Faker::Internet.free_email }
    username               { Faker::Internet.username }
  end
end
