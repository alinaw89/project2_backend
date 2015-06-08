class Category < ActiveRecord::Base
  has_many :cosmetic_products
  #belongs_to :cosmetic_product
end



