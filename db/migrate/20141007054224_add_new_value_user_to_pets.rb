class AddNewValueUserToPets < ActiveRecord::Migration
  def change
    add_reference :pets, :user, index: true
  end
end
