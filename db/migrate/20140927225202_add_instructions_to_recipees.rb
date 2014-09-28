class AddInstructionsToRecipees < ActiveRecord::Migration
  def change
  	add_column :recipees, :instructions, :string, :limit => 140
  end
end
