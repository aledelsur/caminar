class AddContactAddressToPages < ActiveRecord::Migration
  def change
    add_column :pages, :contact_address, :string
    add_column :pages, :contact_latitude, :float
    add_column :pages, :contact_longitude, :float
  end
end
