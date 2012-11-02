class AddBeanToCups < ActiveRecord::Migration
  def change
    add_column :cups, :bean, :string
  end
end
