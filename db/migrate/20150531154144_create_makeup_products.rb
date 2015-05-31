class CreateMakeupProducts < ActiveRecord::Migration
  def change
    create_table :makeup_products do |t|
      t.text :picture
      t.string :category
      t.string :name
      t.string :brand
      t.string :color
      t.decimal :price
      t.string :purchase_date
      t.string :date

      t.timestamps null: false
    end
  end
end


