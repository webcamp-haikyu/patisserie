class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :payment_method ,null: false, default: 0
      t.integer :delivery_fee
      t.integer :order_status, null: false, default: 0
      t.string :post_code
      t.string :address
      t.string :name

      t.timestamps
    end
  end
end
