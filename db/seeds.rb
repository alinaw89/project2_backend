
['eyes', 'lips', 'face', 'hair', 'body'].each {|category| Category.create!(name: category) if !Category.find_by(name: category)}

# eyes = Category.create!(name: 'Eyes') if !Category.find_by(name: 'Eyes')
# lips = Category.create!(name: 'Lips')
# face = Category.create!(name: 'Face')

# makeup_product = CosmeticProduct.create!(picture:'http://www.sephora.com/productimages/sku/s1221084-main-hero-300.jpg', name: 'Waterproof Liquid Eye Liner', brand: 'Stila', color: 'Jet Black', price: 20.00, purchase_date: 2015/02/05)



# STARTS HERE
@stila = Rack::Test::UploadedFile.new(Rails.root + 'pic1.jpg', 'image/jpg')
@dior = Rack::Test::UploadedFile.new(Rails.root + 'pic2.jpg', 'image/jpg')
@nars = Rack::Test::UploadedFile.new(Rails.root + 'pic3.jpg', 'image/jpg')
@burts = Rack::Test::UploadedFile.new(Rails.root + 'pic4.jpg', 'image/jpg')
@olay = Rack::Test::UploadedFile.new(Rails.root + 'pic5.jpg', 'image/jpg')
@bm = Rack::Test::UploadedFile.new(Rails.root + 'pic6.jpg', 'image/jpg')
@el = Rack::Test::UploadedFile.new(Rails.root + 'pic7.jpg', 'image/jpg')
@mor = Rack::Test::UploadedFile.new(Rails.root + 'pic8.jpg', 'image/jpg')
@target = Rack::Test::UploadedFile.new(Rails.root + 'pic9.jpg', 'image/jpg')
@clinque = Rack::Test::UploadedFile.new(Rails.root + 'pic10.jpg', 'image/jpg')
@marc = Rack::Test::UploadedFile.new(Rails.root + 'pic11.jpg', 'image/jpg')


nawal = User.create!(name: "Nawal", email: "nawal@gmail.com", password: 'nawal', password_confirmation: nil)
lisa = User.create!(name: "Lisa", email: "lisa@gmail.com", password: 'lisa', password_confirmation: nil)



CosmeticProduct.create!(name: "Stila Stay All Day Waterproof Eyeliner", brand: "stila", color: "Jet Black", price: 20, purchase_date: "11/20/2014", user: nawal, category: Category.find_by_name('eyes'), image: @stila)

CosmeticProduct.create!(name: "Diorshow Waterproof Mascara", brand: "Dior", color: "Catwalk Black", price: 25, purchase_date: "08/14/2014", user: nawal, category: Category.find_by_name('eyes'), image: @dior)

CosmeticProduct.create!(name: "Velvet Matte Lip pencil", brand: "Nars", color: "Walkyrie", price: 20, purchase_date: "02/04/2015", user: nawal, category: Category.find_by_name('lips'), image: @nars)

CosmeticProduct.create!(name: "Burt's Bees Lip Balm, Eucalyptus Oil", brand: "Burt's Bees", color: "none", price: 3.29, purchase_date: "12/3/2014", user: nawal, category: Category.find_by_name('lips'), image: @burts)

CosmeticProduct.create!(name: "Olay Complete All Day Moisturizer", brand: "Oil of Olay", color: "none", price: 9.19, purchase_date: "05/30/2015", user: nawal, category: Category.find_by_name('face'), image: @olay)

CosmeticProduct.create!(name: "Matte Foundation Broad Spectrum", brand: "Bare Minerals", color: "Golden Tan", price: 28, purchase_date: "11/25/2014", user: nawal, category: Category.find_by_name('face'), image: @bm)

CosmeticProduct.create!(name: "Pure Color Blush", brand: "Estee Lauder", color: "Rose", price: 32, purchase_date: "06/02/2015", user: nawal, category: Category.find_by_name('face'), image: @el)

CosmeticProduct.create!(name: "Moroccan Oil Treatment", brand: "Moroccan Oil", color: "none", price: 43, purchase_date: "07/12/2014", user: nawal, category: Category.find_by_name('hair'), image: @mor)

CosmeticProduct.create!(name: "Up & Up Body Oil", brand: "Target", color: "none", price: 7.99, purchase_date: "04/20/2015", user: nawal, category: Category.find_by_name('body'), image: @target)

CosmeticProduct.create!(name: "Take The Day Off Cleansing Oil", brand: "Clinque", color: "none", price: 27, purchase_date: "04/24/2015", user: lisa, category: Category.find_by_name('face'), image: @clinque)

CosmeticProduct.create!(name: "Daisy Fragrance", brand: "Marc Jacobs", color: "none", price: 135, purchase_date: "02/05/2014", user: lisa, category: Category.find_by_name('body'), image: @marc)

