class CreateEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :events do |t|
      t.text :judul_kajian
      t.string :pengisi
      t.string :hari
      t.string :tanggal
      t.string :lokasi
      t.float :latitude
      t.float :longtitude

      t.timestamps
    end
  end
end
