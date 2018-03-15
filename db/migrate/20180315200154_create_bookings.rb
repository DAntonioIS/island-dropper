class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|


      t.string   :reset_password_token
      t.string   :reset_password_token
       t.string   :reset_password_token
        t.string   :reset_password_token
        t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :reset_password_sent_at
      t.datetime :reset_password_sent_at

      t.integer 

      t.timestamps
    end



  end
end
