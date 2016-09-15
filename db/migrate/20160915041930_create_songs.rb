class CreateSongs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string      :title
      t.integer     :track_number
      t.boolean     :is_favorite
      t.belongs_to  :user, index: true
      t.belongs_to  :album, index: true

      t.timestamps
    end
  end
end
