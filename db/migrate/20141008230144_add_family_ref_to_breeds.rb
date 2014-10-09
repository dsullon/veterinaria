class AddFamilyRefToBreeds < ActiveRecord::Migration
  def change
    add_reference :breeds, :Family, index: true
  end
end
