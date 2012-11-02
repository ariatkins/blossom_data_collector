class Cup < ActiveRecord::Base
  attr_accessible :temperature, :duration
  belongs_to :machine
  has_many :comments

  validates :machine_id, presence: true

  default_scope order: 'cups.created_at DESC'
end
