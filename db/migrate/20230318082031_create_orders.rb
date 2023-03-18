class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.references :pizza, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :restaurant, null: false, foreign_key: true
      t.string :size
      t.text :toppings

      t.timestamps
    end
  end
end
