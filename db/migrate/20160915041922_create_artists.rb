class CreateArtists < ActiveRecord::Migration[5.0]
  def change
    create_table :artists do |t|
      t.string      :first_name, null: false
      t.string      :last_name
      t.date        :born_on
      t.date        :died_on
      t.string      :bio
      t.boolean     :is_favorite
      t.belongs_to  :user, index: true, null: false

      t.timestamps
    end
  end
end
