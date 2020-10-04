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

	# 商品詳細画面
	def show
		@product = Product.find(params[:id])
	end

	def edit
	end

	private
	def product_params
	    params.require(:product).permit(:image, :category_id, :name, :introduction, :price, :is_active)
	end
end
