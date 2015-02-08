require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do
  User.create(
      name: Faker::Name.name,
      email: Faker::Internet.email,
      password: "123",
      pic_url: Faker::Internet.url
      )
end

users = User.all


10.times do
  Question.create(
    title: Faker::Lorem.sentence,
    prompt: Faker::Lorem.paragraph,
    user_id: users.sample.id
    )
end

questions = Question.all


20.times do
  Answer.create(
    content: Faker::Lorem.paragraph,
    question_id: questions.sample.id,
    user_id: users.sample.id
    )
end

answers = Answer.all

60.times do
  Comment.create(
    content: Faker::Lorem.paragraph,
    commentable_id: rand(1..10),
    commentable_type: [Question, Answer].sample,
    user_id: users.sample.id
    )
end

comments = Comment.all


100.times do
  Vote.create(
    votable_id: rand(1..10),
    votable_type: [Question, Answer].sample,
    user_id: users.sample.id
    )
end













