class Pet < ActiveRecord::Base
  belongs_to :user
  belongs_to :specie
  belongs_to :breed
end
