class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :photo_url
      t.text :tags, array: true, default: []
      t.datetime :created_on
      t.references :phrase
    end
  end
end
