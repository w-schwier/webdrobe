class AddAttachmentImageToGarments < ActiveRecord::Migration[5.1]
  def self.up
    change_table :garments do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :garments, :image
  end
end
