class RemoveStringValueFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :string, :string
  end
end
