FactoryGirl.define do
  factory :question do
    title { Faker::Lorem.words(3)}
    prompt { Faker::Lorem.paragraph }
    user_id { rand(1..5) }
  end
end
