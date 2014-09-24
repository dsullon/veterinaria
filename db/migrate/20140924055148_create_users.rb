class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :userId
      t.string :userName
      t.string :name
      t.string :lastName
      t.string :password
      t.string :address
      t.string :phone
      t.string :mobilePhone
      t.string :email
      t.string :userType
      t.string :avatar

      t.timestamps
    end
  end
end
