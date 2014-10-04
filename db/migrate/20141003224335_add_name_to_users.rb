class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :lastName, :string
    add_column :users, :address, :string
    add_column :users, :phone, :string
    add_column :users, :mobilePhone, :string
    add_column :users, :avatar, :string
  end
end
