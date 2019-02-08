class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string "name"
      t.integer "price"
      t.string "address"
      t.string "age"
      t.text "content"
      t.timestamps
    end
  end
end
