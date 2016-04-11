class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      #t.integer :id -> primary key
      t.string :url
      t.string :title
      t.string :description

      t.timestamps null: false
      #t.datetime created_at, updated_at
    end
  end
end
