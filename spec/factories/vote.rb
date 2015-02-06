FactoryGirl.define do
  factory :vote do
    votable_id { rand(1..5) }
    votable_type { ["question", "answer"].sample }
    user_id { rand(1..5) }
  end
end
