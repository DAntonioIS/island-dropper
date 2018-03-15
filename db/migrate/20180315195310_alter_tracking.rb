class AlterTracking < ActiveRecord::Migration[5.1]
  def change

  	add_column :tracking_details, :customer_tracking, :string
	add_column :tracking_details, :dispatcher_tracking, :string
  end
end
