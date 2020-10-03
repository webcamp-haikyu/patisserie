class Customers::CustomersController < ApplicationController

	def show
		@customer = current_customer
	end

	private
		def customer_params
			params.require(:customer).permit(:last_name, :first_name, :first_name_kana, :last_name_kana, :email, :post_code, :address, :phone_number)
		end
end
