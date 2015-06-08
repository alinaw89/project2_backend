class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :cosmetic_product_count

  has_many :cosmetic_products

  # virtual attribute to get product count
  def cosmetic_product_count
    object.cosmetic_products.count
  end

end
