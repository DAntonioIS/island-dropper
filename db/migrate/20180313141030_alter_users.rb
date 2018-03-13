class AlterUsers < ActiveRecord::Migration[5.1]
  def change
	remove_column :users, :firstName
	remove_column :users, :lastName
	remove_column :users, :BusinessName
	remove_column :users, :contactNumber

  end
end
