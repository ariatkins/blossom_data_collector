class Cup < ActiveRecord::Base
  attr_accessible :duration, :temperature, :time
  belongs_to :machine

  validates :machine_id, presence: true

  default_scope order: 'cups.created_at DESC'

end
