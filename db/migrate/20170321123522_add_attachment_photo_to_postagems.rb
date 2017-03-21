class AddAttachmentPhotoToPostagems < ActiveRecord::Migration
  def self.up
    change_table :postagems do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :postagems, :photo
  end
end
