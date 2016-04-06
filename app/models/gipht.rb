class Gipht < ActiveRecord::Base
  belongs_to :user
  has_many :favourites
end
