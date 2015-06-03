class CosmeticProductSerializer < ActiveModel::Serializer
  attributes :name, :brand, :color, :price, :purchase_date, :user_id, :category_id, :image_file_name


end
