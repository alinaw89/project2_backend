class AddAttachmentImageToCosmeticProducts < ActiveRecord::Migration
  def self.up
    change_table :cosmetic_products do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :cosmetic_products, :image
  end
end

