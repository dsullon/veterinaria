class CreateSpecies < ActiveRecord::Migration
  def change
    create_table :species do |t|
      t.integer :specieId
      t.string :name

      t.timestamps
    end
  end
end
