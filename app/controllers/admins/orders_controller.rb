class Admins::OrdersController < ApplicationController
  # 注文履歴一覧
  def index
  	@cart_products = CartProduct.all
  end

  def show
  end
end
