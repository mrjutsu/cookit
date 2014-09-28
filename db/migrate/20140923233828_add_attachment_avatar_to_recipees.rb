class AddAttachmentAvatarToRecipees < ActiveRecord::Migration
  def self.up
    change_table :recipees do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :recipees, :avatar
  end
end
