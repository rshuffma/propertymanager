class PaymentTransaction < ActiveRecord::Base
  attr_accessible :response
  
  belongs_to :payment
end
