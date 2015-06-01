class Category < ActiveRecord::Base
  has_many :makeup_products
  #belongs_to :make_product
end

