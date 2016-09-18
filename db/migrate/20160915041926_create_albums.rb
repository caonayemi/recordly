class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string      :title, null: false
      t.integer     :release_year
      t.boolean     :is_favorite
      t.belongs_to  :user, index: true, null: false
      t.belongs_to  :artist, index: true, null: false

      t.timestamps
    end
  end
end
