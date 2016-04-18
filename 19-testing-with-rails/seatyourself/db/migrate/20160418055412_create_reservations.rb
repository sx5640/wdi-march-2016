class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.references :restaurant, index: true, foreign_key: true
      t.integer :party_size
      t.datetime :time

      t.timestamps null: false
    end
  end
end
