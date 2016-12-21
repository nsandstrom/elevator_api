class CreatePosition < ActiveRecord::Migration
  def change
    create_table :position do |t|
      t.integer :elevator_id, null: false
      t.integer :floor, null: false
      t.datetime :timestamp, null: false
      t.timestamps null: false
    end
  end
end
