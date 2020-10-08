class Product < ApplicationRecord

  has_many :order_items

  def tax_included_price
  	price * 1.1
  end
end
