class AddUserRefToRecipees < ActiveRecord::Migration
  def change
    add_reference :recipees, :user, index: true
  end
end
