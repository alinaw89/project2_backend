class CreateMakeupProducts < ActiveRecord::Migration
  def change
    create_table :makeup_products do |t|
      t.text :picture
      t.string :name
      t.string :brand
      t.string :color
      t.decimal :price
      t.string :purchase_date
      t.string :date
      t.references :user, index: true, foreign_key: true
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end


