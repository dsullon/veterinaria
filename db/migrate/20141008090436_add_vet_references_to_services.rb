class AddVetReferencesToServices < ActiveRecord::Migration
  def change
    add_reference :services, :vet, index: true
  end
end
