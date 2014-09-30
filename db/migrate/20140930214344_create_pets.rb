class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.references :user, index: true
      t.string :name
      t.float :weight
      t.float :height
      t.string :gender
      t.datetime :datebirth
      t.references :family, index: true
      t.references :breed, index: true
      t.string :otherDetails
      t.string :string

      t.timestamps
    end
  end
end
