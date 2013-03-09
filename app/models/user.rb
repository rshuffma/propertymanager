class User < ActiveRecord::Base
  attr_accessible :email, :password, :username, :crypted_password, :password_confirmation, :role_ids
  acts_as_authentic
  
  belongs_to :lease
  has_many :submittedreports, :class_name => 'RepairRequest'
  has_many :approvedreports, :class_name => 'RepairRequest'
  has_and_belongs_to_many :roles
  has_many :payments
  
  def has_role?(role_sym)
    roles.any?{|r|
      r.name.underscore.to_sym ==
      role_sym}
  end
  
end
