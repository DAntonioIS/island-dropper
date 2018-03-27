class CreatePaymentDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_details do |t|

    	t.string :transaction_id
    	t.string :trans_order_id
    	t.string :trans_hash
    	t.integer :booking_id


      t.timestamps
    end

    add_index :payment_details, :booking_id
  	add_foreign_key :payment_details, :bookings


  end
end
