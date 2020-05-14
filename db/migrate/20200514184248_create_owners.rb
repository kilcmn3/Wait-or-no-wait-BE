class CreateOwners < ActiveRecord::Migration[6.0]
  def change
    create_table :owners do |t|
      t.string :username
      t.string :password
      t.string :restaurant_name
      t.string :restaurant_location
      t.string :restaurant_contact

      t.timestamps
    end
  end
end
