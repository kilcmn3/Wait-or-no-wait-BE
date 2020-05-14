class CreateCustomerWaitlists < ActiveRecord::Migration[6.0]
  def change
    create_table :customer_waitlists do |t|
      t.belongs_to :waitlist, null: false, foreign_key: true
      t.belongs_to :customer, null: false, foreign_key: true
      t.integer :actual_waitTime
      t.integer :estimate_waitTime
      t.string :check_inTime
      t.integer :party_size
      t.boolean :is_waiting
      t.boolean :is_texted
      
      t.timestamps
    end
  end
end
