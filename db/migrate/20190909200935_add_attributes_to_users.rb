class AddAttributesToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :address, :string
    add_column :users, :photo, :string
    add_column :users, :type, :string
    add_column :users, :daily_meal_id, :integer
  end
end
