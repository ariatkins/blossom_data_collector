class AddTimeAndSizeToCups < ActiveRecord::Migration
  def change
    add_column :cups, :time, :string
    add_column :cups, :size, :integer
  end
end
