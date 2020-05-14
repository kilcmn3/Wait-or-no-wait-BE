class CreateWaitlists < ActiveRecord::Migration[6.0]
  def change
    create_table :waitlists do |t|
      t.string :waitlist_date
      t.belongs_to :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
