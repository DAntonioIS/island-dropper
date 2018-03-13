class AddDetailsToUsers < ActiveRecord::Migration[5.1]
  def change
		add_column :users, :first_name, :string
		add_column :users, :last_name, :string
		add_column :users, :business_name, :string
		add_column :users, :contact_number, :string

  end
end
