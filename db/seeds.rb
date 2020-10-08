# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
<<<<<<< HEAD
Category.create!(
	category_name: '生菓子',
	is_active: "true"
	)
Category.create!(
	category_name: '焼き菓子',
	is_active: "true"
	)
Product.create!(
	category_id: '1',
	name: 'ケーキ',
	introduction: '美味しい',
	price: '8000',
	is_active: 'true',
	image: open('./app/assets/images/cake-image.jpg')
	)

Product.create!(
	category_id: '2',
	name: 'ケーキ２',
	introduction: '美味しい２',
	price: '8002',
	is_active: 'true',
	image: open('./app/assets/images/cake-image.jpg')
	)
=======
Order.create!(
	customer_id: "1",
	payment_method: "0",
	delivery_fee: "0",
	order_status: "入金待ち",
	post_code: "test",
	address: "test",
	name: "test",
	created_at: "",
	updated_at: ""
)
>>>>>>> admins/orders/index
