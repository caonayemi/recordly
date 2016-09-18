class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string      :title, null: false
      t.integer     :track_number
      t.boolean     :is_favorite
      t.belongs_to  :user, index: true, null: false
      t.belongs_to  :album, index: true, null: false

      t.timestamps
    end
  end
end
