class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|


      t.string   :delivery_id
      t.string   :status
      t.datetime :delivery_create_date
      t.decimal   :delivery_distance
       t.string   :item_description
      t.integer  :delivery_reference
      t.string   :delivery_instructions
      t.boolean  :itemneed_purchased, default: false
      t.decimal   :delivery_price
      t.string   :customer_reference

      t.timestamps
    end



  end
end
