class Product < ApplicationRecord
	attachment :image

	belongs_to :category
end
