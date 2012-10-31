class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :cup

  validates :cup_id, presence: true
end
