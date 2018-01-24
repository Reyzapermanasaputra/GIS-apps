class ChangeColumnFromEvents < ActiveRecord::Migration[5.1]
  def change
    change_column :events, :latitude, :decimal, :precision => 10
    change_column :events, :longitude, :decimal, :precision => 10
  end
end
