class RemoveName2FromStations < ActiveRecord::Migration[5.1]
  def change
    remove_column :stations, :name2, :string
  end
end
