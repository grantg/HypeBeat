class AddMoreFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :bio
    remove_column :users, :favorite_class
    add_column :users, :street, :string
    add_column :users, :city, :string
    add_column :users, :state, :string
    add_column :users, :zip_code, :string
    add_column :users, :phone_number, :string
    add_column :users, :card_num, :string
  end
end
