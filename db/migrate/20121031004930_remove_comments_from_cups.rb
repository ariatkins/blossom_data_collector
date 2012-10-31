class RemoveCommentsFromCups < ActiveRecord::Migration
  def change
    remove_column :cups, :comments, :string
  end
end
