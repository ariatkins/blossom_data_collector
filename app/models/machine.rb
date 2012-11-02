class Machine < ActiveRecord::Base
  attr_accessible :imp_id
  belongs_to :user
  has_many :cups
  has_many :powerons

  validates :imp_id, presence: true
  validates :user_id, presence: true
end
