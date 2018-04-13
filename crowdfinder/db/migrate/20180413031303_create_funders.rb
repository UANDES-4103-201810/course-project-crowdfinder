class CreateFunders < ActiveRecord::Migration[5.2]
  def change
    create_table :funders do |t|
      t.integer :user_id
      t.integer :promise_id

      t.timestamps
    end
  end
end
