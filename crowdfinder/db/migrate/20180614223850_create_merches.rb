class CreateMerches < ActiveRecord::Migration[5.2]
  def change
    create_table :merches do |t|
      t.string :name
      t.string :description
      t.references :promise, foreign_key: true

      t.timestamps
    end
  end
end
