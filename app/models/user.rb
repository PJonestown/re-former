class User < ActiveRecord::Base
  validates :username, :password, presence: true
  validates_uniqueness_of :username
end
