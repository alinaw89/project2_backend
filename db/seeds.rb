
['Eyes', 'Lips', 'Face', 'Hair'].each {|category| Category.create!(name: category) if !Category.find_by(name: category)}

# eyes = Category.create!(name: 'Eyes') if !Category.find_by(name: 'Eyes')
# lips = Category.create!(name: 'Lips')
# face = Category.create!(name: 'Face')

# makeup_product = MakeupProduct.create!(picture:'http://www.sephora.com/productimages/sku/s1221084-main-hero-300.jpg', name: 'Waterproof Liquid Eye Liner', brand: 'Stila', color: 'Jet Black', price: 20.00, purchase_date: 2015/02/05)

@file = Rack::Test::UploadedFile.new(Rails.root + 'imageexample.jpg', 'image/jpg')



nawal = User.create!(name: "Nawal", email: "ali.naw89@gmail.com")

courtney = User.create!(name: "Courtney", email:"courtneysadusky@gmail.com")

amy = User.create!(name: "Amy", email:"amykgoldberg@gmail.com")

ali = User.create!(name: "Ali", email: "alikarukas@gmail.com")

MakeupProduct.create!(name: "Eyeliner", brand: "Stila", color: "Black", price: 20.0, purchase_date: "2015/02/06", user: nawal, category: Category.find_by_name('Eyes'), image: @file)

MakeupProduct.create!(name: "Velvet Matte Lip Pencil", brand: "Nars", color: "Walkyrie", price: 25.0, purchase_date: "2014/05/07", user: courtney, category: Category.find_by_name('Lips'), image: @file)

 MakeupProduct.create!(name: "Bronzer", brand: "Mac", color: "Sunburst", price: 30.0, purchase_date: "2014/09/11", user: amy, category: Category.find_by_name('Face'), image: @file)

 MakeupProduct.create!(name: "Clean Freak Dry Shampoo", brand: "Not Your Mothers", color: "none", price: 4.0, purchase_date: "2015/05/06", user: ali, category: Category.find_by_name('Hair'), image: @file)

 MakeupProduct.create!(name: "Mascara", brand: "Dior", color: "Jet Black", price: 35.0, purchase_date: "2013/01/06", user: nawal, category: Category.find_by_name('Eyes'), image: @file)
