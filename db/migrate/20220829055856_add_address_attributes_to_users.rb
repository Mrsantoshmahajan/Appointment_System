class AddAddressAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :area, :string
    add_column :users, :pincode, :inteeger
  end
end
