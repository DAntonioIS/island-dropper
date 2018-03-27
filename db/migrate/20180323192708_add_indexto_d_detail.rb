class AddIndextoDDetail < ActiveRecord::Migration[5.1]
  def change
		add_index :delivery_details, :the_pickup

  end
end
