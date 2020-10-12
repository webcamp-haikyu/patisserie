class OrderItem < ApplicationRecord

	belongs_to :order, optional: true
	belongs_to :product, optional: true
 	enum create_status: [:着手不可, :製作待ち ,:制作中 ,:制作完了]


end
