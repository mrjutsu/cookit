class ChangeRecipeesType < ActiveRecord::Migration
  def change
  	reversible do |dir|
      change_table :recipees do |t|
        t.rename :type, :food_type
      end
    end
  end
end
