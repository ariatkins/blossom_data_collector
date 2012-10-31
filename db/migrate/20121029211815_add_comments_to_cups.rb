class AddCommentsToCups < ActiveRecord::Migration
  def change
    add_column :cups, :comments, :string
  end
end
