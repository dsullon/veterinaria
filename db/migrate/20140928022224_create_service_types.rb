class CreateServiceTypes < ActiveRecord::Migration
  def change
    create_table :service_types do |t|
      t.boolean :atHome
      t.boolean :inSite

      t.timestamps
    end
  end
end
