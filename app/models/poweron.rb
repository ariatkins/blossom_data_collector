class Poweron < ActiveRecord::Base
  attr_accessible :time
  belongs_to :machine

  validates :machine_id, presence: true
end
