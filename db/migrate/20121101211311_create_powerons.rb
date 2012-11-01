class CreatePowerons < ActiveRecord::Migration
  def change
    create_table :powerons do |t|
      t.string :machine_id
      t.string :time

      t.timestamps
    end
  end
end
