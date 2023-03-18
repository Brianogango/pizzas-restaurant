class AddPizzaIdToOrders < ActiveRecord::Migration[7.0]
  def change
    add_reference :orders, :pizza, null: false, foreign_key: true
  end
end
