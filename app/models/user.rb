class User < ActiveRecord::Base
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable, :omniauthable
  # Probably want to include :confirmable again...maybe
  include DeviseTokenAuth::Concerns::User

  has_many :friendships
  has_many :friends, through: :friendships
end
