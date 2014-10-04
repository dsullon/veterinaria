class RemoveDatebirthlValuesFromPets < ActiveRecord::Migration
  def change
    remove_column :pets, :datebirth, :date
  end
end
