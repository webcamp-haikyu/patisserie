class Product < ApplicationRecord
<<<<<<< HEAD
=======
	attachment :image

	has_many :cart_products, dependent: :destroy
>>>>>>> admins/orders/index
	belongs_to :category
	attachment :image
end
