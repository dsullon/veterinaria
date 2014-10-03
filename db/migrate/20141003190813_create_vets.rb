class CreateVets < ActiveRecord::Migration
  def change
    create_table :vets do |t|
      t.string :emailContact
      t.string :password
      t.string :name
      t.string :businessName
      t.string :document
      t.string :logo
      t.string :address

      t.timestamps
    end
  end
end
