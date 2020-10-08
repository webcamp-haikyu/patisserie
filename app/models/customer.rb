class Customer < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :validatable

  	acts_as_paranoid

    has_many :addresses, dependent: :destroy
    has_many :orders, dependent: :destroy

    def full_name
    	first_name + last_name
    end
end
