class CategorySerializer < ActiveModel::Serializer
  attributes :id, :name, :cosmetic_product_count

  has_many :cosmetic_products


  def cosmetic_product_count
    object.cosmetic_products.count
  end

end
