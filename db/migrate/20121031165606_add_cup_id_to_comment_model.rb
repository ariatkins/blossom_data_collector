class AddCupIdToCommentModel < ActiveRecord::Migration
  def change
  	add_column :comments, :cup_id, :integer
  end
end
