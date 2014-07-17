class AddAttachmentImageToSegments < ActiveRecord::Migration
  def self.up
    change_table :segments do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :segments, :image
  end
end
