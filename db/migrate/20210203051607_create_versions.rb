class CreateVersions < ActiveRecord::Migration[6.0]
  def change
    create_table :versions do |t|
      t.string :name, limit: 50
      t.integer :model_id
      t.boolean :active

      t.timestamps
    end
  end
end
