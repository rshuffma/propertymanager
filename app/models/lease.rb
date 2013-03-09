class Lease < ActiveRecord::Base
  attr_accessible :end_date, :rent, :start_date, :unit_id, :user_id
  
  belongs_to :unit
  has_many :customers, :class_name =>'User'
  has_many :payments
end
