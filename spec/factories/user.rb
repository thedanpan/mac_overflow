FactoryGirl.define do
  factory :user do
    name { Faker::Name.name  }
    email { Faker::Internet.email }
    password { "123" }
    pic_url { Faker::Internet.url }
  end
end
