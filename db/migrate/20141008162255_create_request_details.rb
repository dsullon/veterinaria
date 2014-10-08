class CreateRequestDetails < ActiveRecord::Migration
  def change
    create_table :request_details do |t|
      t.references :request, index: true
      t.references :service, index: true
      t.references :pet, index: true
      t.string :comment

      t.timestamps
    end
  end
end
