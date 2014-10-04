class ChangeTypePet < ActiveRecord::Migration
  def up
  	change_table :pets do |t|
  		t.change :datebirth, :date
  	end
  end

  def down
  	change_table :pets do |t|
  		t.change :datebirth, :datetime
  	end
  end
end
