class Comment < ActiveRecord::Base
  attr_accessible :content
  belongs_to :cup

  default_scope order: 'cups.created_at DESC'
end
