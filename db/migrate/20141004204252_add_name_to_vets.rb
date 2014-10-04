class AddNameToVets < ActiveRecord::Migration
  def change
    add_column :vets, :name, :string
    add_column :vets, :address, :string
    add_column :vets, :logo, :string
  end
end
