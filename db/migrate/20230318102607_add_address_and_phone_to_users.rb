class AddAddressAndPhoneToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :address, :string
    add_column :users, :phone, :integer
  end
end
