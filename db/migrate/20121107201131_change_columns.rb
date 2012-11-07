class ChangeColumns < ActiveRecord::Migration
  change_column :comments, :content, :text, :limit => nil
  change_column :cups, :roast_date, :string
end
