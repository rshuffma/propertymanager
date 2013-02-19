class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :crypted_password, :password_confirmation
  acts_as_authentic
end
