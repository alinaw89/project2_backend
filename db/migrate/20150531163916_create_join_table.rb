class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :categories, :makeup_products do |t|
      # t.index [:category_id, :makeup_product_id]
      # t.index [:makeup_product_id, :category_id]
    end
  end
end
