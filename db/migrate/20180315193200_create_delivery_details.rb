class CreateDeliveryDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :delivery_details do |t|

    	 	t.string :delivery_name
    	 	t.string :delivery_address
    	  t.string :delivery_phone_number
    	  t.datetime :delivery_requested_time
    	  t.datetime :delivery_best_possible_time

      t.timestamps
    end
  end
end
