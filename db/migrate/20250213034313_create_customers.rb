class CreateCustomers < ActiveRecord::Migration[7.1]
  def change
    create_table :customers do |t|
      t.string :last_name
      t.string :first_name
      t.string :phone
      t.string :email
      t.date :first_visit

      t.timestamps
    end
  end
end
