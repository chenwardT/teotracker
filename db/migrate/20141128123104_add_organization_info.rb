class AddOrganizationInfo < ActiveRecord::Migration
  def change
    add_column :organizations, :city, :string
    add_column :organizations, :street_address, :string
    add_column :organizations, :postal_code, :string
    add_column :organizations, :country, :string
  end
end
