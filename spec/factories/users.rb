FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password123' }
    username { Faker::Internet.username }

  end
end
