class AddPickUptoDetail < ActiveRecord::Migration[5.1]
  def change
  	add_column :delivery_details, :the_pickup, :boolean, default: false

  end
end
