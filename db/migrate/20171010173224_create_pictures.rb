class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.string :artist
      t.string :title
      t.string :string
      t.string :url
      t.string :string

      t.timestamps
    end
  end
end
