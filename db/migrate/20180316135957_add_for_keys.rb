class AddForKeys < ActiveRecord::Migration[5.1]
  def change

  		add_column :delivery_details, :booking_id, :integer
  		add_index :delivery_details, :booking_id
  		add_foreign_key :delivery_details, :bookings

  		add_column :tracking_details, :booking_id, :integer
  		add_index :tracking_details, :booking_id
  		add_foreign_key :tracking_details, :bookings

  		
		add_column :bookings, :customer_id, :integer
		add_index :bookings, :customer_id
		add_foreign_key :bookings, :users
		
  end
end
