class CreateNotifications < ActiveRecord::Migration[7.1]
  def change
    create_table :notifications do |t|
      t.references :staff, null: false, foreign_key: true
      t.string :message
      t.boolean :read

      t.timestamps
    end
  end
end
