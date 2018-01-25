class ChangeColumnToEvents < ActiveRecord::Migration[5.1]
  def change
  	change_column :events, :tanggal, 'date USING CAST(tanggal AS date)'
  end
end
