
['eyes', 'lips', 'face', 'hair', 'body'].each {|category| Category.create!(name: category) if !Category.find_by(name: category)}

# eyes = Category.create!(name: 'Eyes') if !Category.find_by(name: 'Eyes')
# lips = Category.create!(name: 'Lips')
# face = Category.create!(name: 'Face')

# makeup_product = CosmeticProduct.create!(picture:'http://www.sephora.com/productimages/sku/s1221084-main-hero-300.jpg', name: 'Waterproof Liquid Eye Liner', brand: 'Stila', color: 'Jet Black', price: 20.00, purchase_date: 2015/02/05)

@stila = Rack::Test::UploadedFile.new(Rails.root + 'pic1.jpg', 'image/jpg')
@dior = Rack::Test::UploadedFile.new(Rails.root + 'pic2.jpg', 'image/jpg')
@nars = Rack::Test::UploadedFile.new(Rails.root + 'pic3.jpg', 'image/jpg')
@burts = Rack::Test::UploadedFile.new(Rails.root + 'pic4.jpg', 'image/jpg')
@olay = Rack::Test::UploadedFile.new(Rails.root + 'pic5.jpg', 'image/jpg')
@bm = Rack::Test::UploadedFile.new(Rails.root + 'pic6.jpg', 'image/jpg')
@el = Rack::Test::UploadedFile.new(Rails.root + 'pic7.jpg', 'image/jpg')
@mor = Rack::Test::UploadedFile.new(Rails.root + 'pic8.jpg', 'image/jpg')
@target = Rack::Test::UploadedFile.new(Rails.root + 'pic9.jpg', 'image/jpg')


nawal = User.create!(name: "Nawal", email: "ali.naw89@gmail.com", password: 'abc123', password_confirmation: nil)

# courtney = User.create!(name: "Courtney", email:"courtneysadusky@gmail.com")

# amy = User.create!(name: "Amy", email:"amykgoldberg@gmail.com")

# ali = User.create!(name: "Ali", email: "alikarukas@gmail.com")

CosmeticProduct.create!(name: "stila Stay All Day Waterproof Eyeliner", brand: "stila", color: "Jet Black", price: 20, purchase_date: "11/20/2014", user: nawal, category: Category.find_by_name('eyes'), image: @stila)

CosmeticProduct.create!(name: "Diorshow Waterproof Mascara", brand: "Dior", color: "Catwalk Black", price: 25, purchase_date: "08/14/2014", user: nawal, category: Category.find_by_name('eyes'), image: @dior)

CosmeticProduct.create!(name: "Velvet Matte Lip pencil", brand: "Nars", color: "Walkyrie", price: 20, purchase_date: "02/04/2015", user: nawal, category: Category.find_by_name('lips'), image: @nars)

CosmeticProduct.create!(name: "Burt's Bees Lip Balm, Eucalyptus Oil", brand: "Burt's Bees", color: "none", price: 3.29, purchase_date: "12/3/2014", user: nawal, category: Category.find_by_name('lips'), image: @burts)

CosmeticProduct.create!(name: "Olay Complete All Day Moisturizer", brand: "Oil of Olay", color: "none", price: 9.19, purchase_date: "05/30/2015", user: nawal, category: Category.find_by_name('face'), image: @olay)

CosmeticProduct.create!(name: "Matte Foundation Broad Spectrum", brand: "Bare Minerals", color: "Golden Tan", price: 28, purchase_date: "11/25/2014", user: nawal, category: Category.find_by_name('face'), image: @bm)

CosmeticProduct.create!(name: "Pure Color Blush", brand: "Estee Lauder", color: "Rose", price: 32, purchase_date: "06/02/2015", user: nawal, category: Category.find_by_name('face'), image: @el)

CosmeticProduct.create!(name: "Moroccan Oil Treatment", brand: "Moroccan Oil", color: "none", price: 43, purchase_date: "07/12/2014", user: nawal, category: Category.find_by_name('hair'), image: @mor)

CosmeticProduct.create!(name: "Up & Up Body Oil", brand: "Target", color: "none", price: 7.99, purchase_date: "04/20/2015", user: nawal, category: Category.find_by_name('body'), image: @target)




# CosmeticProduct.create!(name: "Velvet Matte Lip Pencil", brand: "Nars", color: "Walkyrie", price: 25.0, purchase_date: "2014/05/07", user: courtney, category: Category.find_by_name('lips'), image: @file)

#  CosmeticProduct.create!(name: "Bronzer", brand: "Mac", color: "Sunburst", price: 30.0, purchase_date: "2014/09/11", user: amy, category: Category.find_by_name('face'), image: @file)

#  CosmeticProduct.create!(name: "Clean Freak Dry Shampoo", brand: "Not Your Mothers", color: "none", price: 4.0, purchase_date: "2015/05/06", user: ali, category: Category.find_by_name('hair'), image: @file)


