class CreateCarTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :car_types do |t|
      t.string :name, limit: 50

      t.timestamps
    end
  end
end
