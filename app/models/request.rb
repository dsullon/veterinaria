class Request < ActiveRecord::Base
	has_many :request_details
	belongs_to :serviceType
	belongs_to :vet
	belongs_to :user
	accepts_nested_attributes_for :request_details, :reject_if => :all_blank, :allow_destroy => true
end
