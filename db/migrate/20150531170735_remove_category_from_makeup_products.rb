class RemoveCategoryFromMakeupProducts < ActiveRecord::Migration
  def change
    remove_column :makeup_products, :category, :string
  end
end
