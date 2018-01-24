class ChangeLatLongFromEvents < ActiveRecord::Migration[5.1]
  def change
  	change_column :events, :latitude, :string
    change_column :events, :longitude, :string
  end
end
