class Admins::CustomersController < ApplicationController
  def top
    now = Time.current
    @orders = Order.where(created_at: now.all_day)
  end

  def about
  end

  def index
    @customers = Customer.all
  end

  def show
  end

  def edit
  end
end
