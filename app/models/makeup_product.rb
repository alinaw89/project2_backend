class MakeupProduct < ActiveRecord::Base
  belongs_to :user
  belongs_to :category
end


# 1.user
# 2.category
# 3. makeup product

# 1.drop, create, migrate (users, categories, makeup product)
