class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.boolean :is_admin
      t.string :provider
      t.integer :uid

      t.timestamps
    end
  end
end
