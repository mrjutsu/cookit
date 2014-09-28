class AddHoursToRecipee < ActiveRecord::Migration
  def change
  	add_column :recipees, :hours, :integer
  end
end
