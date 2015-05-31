class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :makeup_products, :categories do |t|
      # t.index [:makeup_product_id, :category_id]
      # t.index [:category_id, :makeup_product_id]
    end
  end
end
