class CartProduct < ApplicationRecord
	belongs_to :product
	belongs_to :customer
	validates :quantity, numericality: true

	def sub_total
    product.include_tax * quantity
  end

  
	
end
