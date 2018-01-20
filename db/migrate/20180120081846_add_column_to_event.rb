class AddColumnToEvent < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :kota, :string
    add_column :events, :cp, :string
    add_column :events, :cp_no_telpon, :string
  end
end
