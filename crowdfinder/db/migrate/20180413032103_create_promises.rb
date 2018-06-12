class CreatePromises < ActiveRecord::Migration[5.2]
  def change
    create_table :promises do |t|
      t.integer :project_id
      t.integer :merch
      t.integer :price
      t.boolean :is_default
      t.string :name

      t.timestamps
    end
  end
end
