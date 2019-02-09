class RemoveLine2FromStations < ActiveRecord::Migration[5.1]
  def change
    remove_column :stations, :line2, :string
  end
end
