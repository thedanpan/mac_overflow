FactoryGirl.define do
  factory :answer do
    content { Faker::Lorem.paragraph }
    question_id { rand(1..5) }
    user_id { rand(1..5) }
  end
end
