class AddNewValuesToServiceTypes < ActiveRecord::Migration
  def change
    add_column :service_types, :lugar, :string
  end
end
