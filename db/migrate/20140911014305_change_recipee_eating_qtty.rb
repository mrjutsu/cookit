class ChangeRecipeeEatingQtty < ActiveRecord::Migration
  def change
  	reversible do |dir|
  		change_table :recipees do |t|
  			dir.up {t.change :eating_qtty, :string}
  			dir.down {t.change :eating_qtty, :integer}
  		end
  	end
  end
end
