class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|
      t.belongs_to :project, index: true, foreign_key: true
      t.integer :amount
      t.text :description

      t.timestamps null: false
    end
  end
end
