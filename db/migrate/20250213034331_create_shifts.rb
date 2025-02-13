class CreateShifts < ActiveRecord::Migration[7.1]
  def change
    create_table :shifts do |t|
      t.references :staff, null: false, foreign_key: true
      t.date :work_date
      t.string :shift_type

      t.timestamps
    end
  end
end
