class AddPhoneToVets < ActiveRecord::Migration
  def change
    add_column :vets, :phone, :string
    add_column :vets, :url, :string
  end
end
