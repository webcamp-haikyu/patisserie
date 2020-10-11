class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :addresses, dependent: :destroy
  has_many :cart_products, dependent: :destroy
  has_many :orders, dependent: :destroy


  # 送料抜きの合計金額
  def total
		total = 0
		cart_products.each do |cart_product|
			total += cart_product.sub_total
		end
		total
	end

  # 送料込みの合計金額
  def total_price
    total_price = total+Order.new.delivery_fee
  end

  def full_address
    post_code+ " " + address
  end

  def full_name
    "#{self.last_name} #{self.first_name}"
  end

  def full_name_kana
  	"#{self.last_name_kana} #{self.first_name_kana}"
  end
  
  acts_as_paranoid
end

