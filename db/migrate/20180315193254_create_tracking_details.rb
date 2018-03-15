class CreateTrackingDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :tracking_details do |t|

      t.timestamps
    end
  end
end
