class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|
      t.string :time
      t.integer :temperature
      t.integer :duration
      t.integer :machine_id
      t.integer :user_id

      t.timestamps
    end
    add_index :cups, [:user_id, :machine_id, :created_at]
  end
end
