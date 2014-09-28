class AddAttachmentPhotoToRecipees < ActiveRecord::Migration
  def self.up
    change_table :recipees do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :recipees, :photo
  end
end
