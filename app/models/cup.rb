class Cup < ActiveRecord::Base
  attr_accessible :temperature, :duration, :size, :bean, :roast_date, :dose, :grind_setting, :yield

  belongs_to :machine
  has_many :comments

  validates :machine_id, presence: true

  accepts_nested_attributes_for :comments

  default_scope order: 'cups.created_at DESC'
end
