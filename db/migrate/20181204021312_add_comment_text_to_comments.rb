class AddCommentTextToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :comment_text, :string
  end
end
