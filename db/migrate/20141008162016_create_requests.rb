class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :requestDate
      t.references :serviceType, index: true
      t.string :address
      t.date :proposeDate
      t.time :proposeHour
      t.boolean :isPending
      t.boolean :isConfirmed
      t.string :comment
      t.references :vet, index: true

      t.timestamps
    end
  end
end
