class RequestDetail < ActiveRecord::Base
  belongs_to :request
  belongs_to :service
  belongs_to :pet
end
