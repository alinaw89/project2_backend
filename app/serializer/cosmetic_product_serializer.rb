class CosmeticProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :brand, :color, :price, :purchase_date, :user_id, :category_id, :image_file_name, :photo, :category_name

def photo
  "https://s3.amazonaws.com/nawalali/medium/#{object.id}/#{object.image_file_name}"
end

def category_name
  object.category.name
end

end
