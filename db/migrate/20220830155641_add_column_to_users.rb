class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :type_of_user, :string
    add_column :users, :phone, :string
    add_column :users, :address, :string
    add_column :users, :avatar, :string
    add_column :users, :username, :string
  end
end
