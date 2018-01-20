class RenameColumnFromEvent < ActiveRecord::Migration[5.1]
  def change
    rename_column :events, :longtitude, :longitude
  end
end
