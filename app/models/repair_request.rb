class RepairRequest < ActiveRecord::Base
  attr_accessible :close_date, :open_date, :request_details, :request_response, :responder_id, :submitter_id
end
