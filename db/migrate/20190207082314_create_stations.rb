class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.references :property, foreign_key: true
      t.string "name"
      t.string "line"
      t.integer "time"
      t.string "name2"
      t.string "line2"
      t.integer "time2"
      t.timestamps
    end
  end
end
