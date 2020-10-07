class Order < ApplicationRecord
	has_many :order_item, dependent: :destroy

	
end
