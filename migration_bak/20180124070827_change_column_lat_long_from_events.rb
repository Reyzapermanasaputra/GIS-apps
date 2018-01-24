class ChangeColumnLatLongFromEvents < ActiveRecord::Migration[5.1]
  def change
  	change_column :events, :latitude, :float, :precision => 10, :scale => 10
    change_column :events, :longitude, :float, :precision => 10, :scale => 10
  end
end
