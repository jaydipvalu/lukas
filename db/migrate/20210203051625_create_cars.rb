class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :name, limit: 50
      t.integer :brand_id
      t.integer :model_id
      t.integer :version_id
      t.string :car_type_id
      t.decimal :rto_price
      t.decimal :on_road_price
      t.decimal :total_price

      t.timestamps
    end
  end
end
