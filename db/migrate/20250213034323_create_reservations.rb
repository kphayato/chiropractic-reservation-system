class CreateReservations < ActiveRecord::Migration[7.1]
  def change
    create_table :reservations do |t|
      t.references :customer, null: false, foreign_key: true
      t.references :staff, null: false, foreign_key: true
      t.references :menu, null: false, foreign_key: true
      t.datetime :start_time
      t.datetime :end_time
      t.string :status
      t.text :notes

      t.timestamps
    end
  end
end
