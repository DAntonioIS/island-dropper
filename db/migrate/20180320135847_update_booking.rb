class UpdateBooking < ActiveRecord::Migration[5.1]
  def change


  		remove_column :bookings, :customer_id, :integer


  		add_column :bookings, :user_id, :integer
		add_index :bookings, :user_id
		add_foreign_key :bookings, :users
  end
end
