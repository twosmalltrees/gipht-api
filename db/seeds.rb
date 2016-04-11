# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

user_1 = User.create(email: 'harrison@example.com', password: 'password', password_confirmation: 'password')
user_2 = User.create(email: 'brynley@example.com', password: 'password', password_confirmation: 'password')
user_3 = User.create(email: 'josh@example.com', password: 'password', password_confirmation: 'password')
user_4 = User.create(email: 'natalie@example.com', password: 'password', password_confirmation: 'password')

Conversation.destroy_all

conversation_1 = Conversation.create(conversation_name: 'South Street')
conversation_2 = Conversation.create(conversation_name: 'Harry and Natalie')
conversation_3 = Conversation.create(conversation_name: 'Brynley and Josh')
conversation_4 = Conversation.create(conversation_name: 'Everyone')

conversation_1.users << user_1 << user_2 << user_3
conversation_2.users << user_1 << user_4
conversation_3.users << user_2 << user_3
conversation_4.users << user_1 << user_2 << user_3 << user_4

Friendship.destroy_all

harryBrynley = Friendship.create(user_id: user_1.id, friend_id: user_2.id)
brynleyHarry = Friendship.create(user_id: user_2.id, friend_id: user_1.id)
harryJosh = Friendship.create(user_id: user_1.id, friend_id: user_3.id)
joshHarry = Friendship.create(user_id: user_3.id, friend_id: user_1.id)
harryNatalie = Friendship.create(user_id: user_1.id, friend_id: user_4.id)
