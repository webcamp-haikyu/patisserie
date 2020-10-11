# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


OrderItem.create!(
	product_id: "1",
	order_id: "1",
	quantity: "5"
)

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
	price: '300',
	is_active: 'true',
	image: open('./app/assets/images/cake-image.jpg')
	)

Product.create!(
	category_id: '2',
	name: 'モンブラン',
	introduction: 'まずい',
	price: '560',
	is_active: 'true',
	image: open('./app/assets/images/cake-image.jpg')
	)

Customer.create!(
	password: 'something',
	email: "email@email.com",
	first_name: '太郎',
	last_name: "けーき",
	first_name_kana: "タロウ",
	last_name_kana: "ケーキ",
	post_code: "1234567",
	address:"東京都千代田区永田町1-1-1",
	phone_number: "08011111111",
 	is_active: "true"
	)
Customer.create!(
	password: 'something',
	email: "name@name.com",
	first_name: 'あ',
	last_name: "あ",
	first_name_kana: "あ",
	last_name_kana: "あ",
	post_code: "1234567",
	address:"東京都千代田区永田町1-1-1",
	phone_number: "08011111111",
 	is_active: "true"
	)

Address.create!(
	customer_id: '1',
	name: '千葉さん',
	address: '千葉県千葉市千葉',
	post_code: '1111111'
	)

Address.create!(
	customer_id: '1',
	name: '埼玉さん',
	address: '埼玉県千葉市千葉',
	post_code: '2111111'
	)

Address.create!(
	customer_id: '2',
	name: '神奈川さん',
	address: '神奈川県千葉市千葉',
	post_code: '2111111'
	)

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

