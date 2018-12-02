class AddFieldsToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :created_by, :string
    add_column :comments, :sent_to, :integer
    add_reference :comments, :users, foreign_key: true
  end
end
