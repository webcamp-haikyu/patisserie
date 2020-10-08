class Order < ApplicationRecord
    has_many :order_items, dependent: :destroy
    belongs_to :customer

    def order_count
      sum = 0
      self.order_items.each do |order_item|
        sum += order_item.quantity
      end
      return sum
    end

    enum order_status:{
      "入金待ち":0, 入金確認:1, 制作中:2, 発送準備:3
    }
end
