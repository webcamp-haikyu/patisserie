class Admins::OrdersController < ApplicationController
  # 注文履歴一覧
  def index
  	@orders = Order.all
  end

  def show
  end
end
