class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :breedId
      t.string :name

      t.timestamps
    end
  end
end
