class RemoveTime2FromStations < ActiveRecord::Migration[5.1]
  def change
    remove_column :stations, :time2, :integer
  end
end
