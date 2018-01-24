class ChangeTypeColumnFromEvent < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :latitude, :float, :precision => 3, :scale => 6
    change_column :events, :longitude, :float, :precision => 3, :scale => 6
  end
end
