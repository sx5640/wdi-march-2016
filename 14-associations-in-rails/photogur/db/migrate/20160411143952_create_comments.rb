class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :message
      t.string :author
      t.integer :picture_id # this is the foreign key

      t.timestamps null: false
    end
  end
end
