class AddAttachmentThumbnailToListings < ActiveRecord::Migration
  def self.up
    change_table :listings do |t|
      t.attachment :thumbnail
    end
  end

  def self.down
    remove_attachment :listings, :thumbnail
  end
end
