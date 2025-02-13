class CreateStaffs < ActiveRecord::Migration[7.1]
  def change
    create_table :staffs do |t|
      t.string :name
      t.string :role
      t.string :store
      t.string :work_hours

      t.timestamps
    end
  end
end
