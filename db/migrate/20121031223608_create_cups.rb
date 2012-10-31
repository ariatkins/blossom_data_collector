class CreateCups < ActiveRecord::Migration
  def change
    create_table :cups do |t|
    t.integer :machine_id
    t.integer :temperature
    t.integer :duration

      t.timestamps
    end
  end
end
