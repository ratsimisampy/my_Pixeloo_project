# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    email              { Faker::Internet.free_email }
    username           { Faker::Internet.username }
    encrypted_password { Faker::Internet.password }
  end
end
