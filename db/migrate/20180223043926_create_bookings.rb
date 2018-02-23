class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.string :name, null: false
      t.string :no_ppl, null: false
      t.datetime :date_time, null: false
      t.string :phone_no, null: false
      t.string :message, null: false

      t.timestamps
    end
  end
end
