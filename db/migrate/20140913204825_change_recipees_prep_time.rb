class ChangeRecipeesPrepTime < ActiveRecord::Migration
  def change
  	reversible do |dir|
      change_table :recipees do |t|
        t.rename :prep_time, :minutes
      end
    end
  end
end
