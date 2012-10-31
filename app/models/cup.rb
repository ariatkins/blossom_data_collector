class Cup < ActiveRecord::Base
  attr_accessible :duration, :temperature, :time
  belongs_to :machine
  has_many :comments

  validates :machine_id, presence: true

  default_scope order: 'cups.created_at DESC'
  accepts_nested_attributes_for :comments

end
