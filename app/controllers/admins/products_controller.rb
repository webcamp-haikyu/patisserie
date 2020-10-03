class Admins::ProductsController < ApplicationController
	# 商品一覧
	def index
		@products = Product.all
	end

	# 商品新規登録
	def new
		@product = Product.new
	end

	# 商品新規登録
	def create
        product = Product.new(product_params)
        product.save
        redirect_to admins_products_path
	end

	def show
	end

	def edit
	end

	private
	def product_params
	    params.require(:product).permit(:image, :name, :introduction, :price, :is_active)
	end
end
