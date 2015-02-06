FactoryGirl.define do
  factory :comment do
    content { Faker::Lorem.paragraph }
    commentable_id { rand(1..5) }
    commentable_type { ["question", "answer"].sample }
    user_id { rand(1..5) }
  end
end
