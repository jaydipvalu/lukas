class CreateModels < ActiveRecord::Migration[6.0]
  def change
    create_table :models do |t|
      t.string :name, limit: 50
      t.integer :brand_id
      t.boolean :active

      t.timestamps
    end
  end
end
