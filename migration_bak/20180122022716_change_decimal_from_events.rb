class ChangeDecimalFromEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :latitude, :float, :precision => 6, :scale => 6
    change_column :events, :longitude, :float, :precision => 6, :scale => 6
  end
end
