Category.destroy_all
MakeupProduct.destroy_all

eyes = Category.create!(name: 'Eyes')
lips = Category.create!(name: 'Lips')
face = Category.create!(name: 'Face')

makeup_product = MakeupProduct.create!(picture:'http://www.sephora.com/productimages/sku/s1221084-main-hero-300.jpg', name: 'Waterproof Liquid Eye Liner', brand: 'Stila', color: 'Jet Black', price: 20.00, purchase_date: 2015/02/05)
