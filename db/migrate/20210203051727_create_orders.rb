class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.integer :car_id
      t.integer :user_id
      t.string :rto_cost
      t.string :process_cost
      t.string :discount_type
      t.string :discount
      t.decimal :total_price
      t.string :payment_method
      t.string :payment_id
      t.string :stastus

      t.timestamps
    end
  end
end
