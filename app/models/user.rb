class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable

  include DeviseTokenAuth::Concerns::User

  has_many :friendships
  has_many :friends, through: :friendships
  has_many :messages
  has_many :favourites
  has_many :giphts
  has_many :notifications
  has_and_belongs_to_many :conversations
end
