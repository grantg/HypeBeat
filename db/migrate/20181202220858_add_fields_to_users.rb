class AddFieldsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :bio, :string
    add_column :users, :birth_date, :date
    add_column :users, :favorite_class, :string
  end
end
