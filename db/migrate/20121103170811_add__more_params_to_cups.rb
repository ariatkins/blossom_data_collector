class AddMoreParamsToCups < ActiveRecord::Migration
  def change
    add_column :cups, :roast_date, :date
    add_column :cups, :dose, :float
    add_column :cups, :grind_setting, :float
    add_column :cups, :yield, :float
  end
end
