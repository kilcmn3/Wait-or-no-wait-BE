class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :contact
      t.boolean :reservation

      t.timestamps
    end
  end
end
