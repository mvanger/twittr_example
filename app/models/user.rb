class User < ActiveRecord::Base
  has_many :tweets
  has_many :favorites
  has_many :followings
  has_many :friends, through: :following, source: 'followed'
  attr_accessible :name, :screenname, :description, :email, :location, :password

  validates :screenname, presence: true
  validates :screenname, uniqueness: true
  validates :password, length: { minimum: 8 }
  validates :screenname, :password, :name, :description, :location, :email, length: { maximum: 100 }
  # validates :screenname, :password, :name, :description, :location, :email,
end