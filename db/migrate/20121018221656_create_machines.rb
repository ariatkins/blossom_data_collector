class CreateMachines < ActiveRecord::Migration
  def change
    create_table :machines do |t|
      t.string :imp_id
      t.integer :user_id

      t.timestamps
    end
    add_index :machines, [:user_id, :imp_id]
  end
end
