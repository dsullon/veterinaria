class RemoveInitialValuesFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :weight, :float
    remove_column :pets, :height, :float
    
  end
end
