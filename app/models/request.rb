class Request < ActiveRecord::Base
  belongs_to :serviceType
  belongs_to :vet
end
