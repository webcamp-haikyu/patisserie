class CartProduct < ApplicationRecord
	belongs_to :product
	belongs_to :customer

	def sub_total
		product.include_tax * quantity
	end

	
end
