class Product < ApplicationRecord
	attachment :image

	has_many :cart_products, dependent: :destroy

	belongs_to :category
	attachment :image
end
