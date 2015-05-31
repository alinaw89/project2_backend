class CategoriesMakeupProduct < ActiveRecord::Base
  belongs_to :makeup_product
  belongs_to :category
end
