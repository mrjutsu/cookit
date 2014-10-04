class ModifyTableRecipees < ActiveRecord::Migration
  def change
  	change_table :recipees do |t|
  		t.change :ingredients, :string, :limit => 300
  		t.change :description, :string, :limit => 600
  		t.change :video, :string, :limit => 300
  		t.change :tips, :string, :limit => 300
  	end
  end
end
