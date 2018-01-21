class AddColumnToEvents < ActiveRecord::Migration[5.1]
  def change
    add_column :events, :jam_mulai, :string
    add_column :events, :jam_selesai, :string
  end
end
