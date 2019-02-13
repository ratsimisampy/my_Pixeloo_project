class AddAddressToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :address, :string
    add_column :items, :city, :string
  end
end
