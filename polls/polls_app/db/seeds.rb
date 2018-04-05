# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ActiveRecord::Base.transaction do

 User.destroy_all
 Poll.destroy_all
 Question.destroy_all
 AnswerChoice.destroy_all
 Response.destroy_all

u1 = User.create!(user_name: "Thorin")
u2 = User.create!(user_name: "Legolas")
u3 = User.create!(user_name: "Saruman")
u4 = User.create!(user_name: "Aragorn")
u5 = User.create!(user_name: "Arwen")

p1 = Poll.create!(title: "Which LOTR character had it the worst?", user_id: u3.id)

q1 = Question.create!(body: "Why is Arwen dying?", poll_id: p1.id)

a1 = AnswerChoice.create!(answer: "It's complicated", question_id:  q1.id)
a2 = AnswerChoice.create!(answer: "Because of her love for Aragorn", question_id: q1.id)

r1 = Response.create!(response: "First response", answer_id: a1.id, user_id: u1.id)
r2 = Response.create!(response: "Second response", answer_id: a2.id, user_id: u2.id)


end
