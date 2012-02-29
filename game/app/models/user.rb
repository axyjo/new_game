class User < ActiveRecord::Base
  has_secure_password

  attr_accessible :username, :email, :password, :password_confirmation

  validates_uniqueness_of :username
  validates_uniqueness_of :email
end
