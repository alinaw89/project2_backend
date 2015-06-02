class AddAttachmentImageToMakeupProducts < ActiveRecord::Migration
  def self.up
    change_table :makeup_products do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :makeup_products, :image
  end
end

