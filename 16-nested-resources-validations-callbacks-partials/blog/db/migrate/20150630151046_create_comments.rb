class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :user_id
      # t.belongs_to :user
      t.integer :rating

      t.timestamps null: false
    end
  end
end
