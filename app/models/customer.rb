class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

<<<<<<< HEAD
  has_many :addresses, dependent: :destroy
=======
    has_many :orders, dependent: :destroy

    def full_name
    	first_name + last_name
    end
>>>>>>> admins/orders/index
end
