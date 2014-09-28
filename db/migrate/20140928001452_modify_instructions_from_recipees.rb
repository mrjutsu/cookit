class ModifyInstructionsFromRecipees < ActiveRecord::Migration
  def change
  	change_table :recipees do |t|
  		t.change :instructions, :string, :limit => 200
  	end
  end
end
