class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer :creator
      t.integer :category_id
      t.text :description
      t.datetime :final_date
      t.integer :rating
      t.integer :goal

      t.timestamps
    end
  end
end
