class AddForeignKeyConstrainToUserId < ActiveRecord::Migration[5.1]
  def change
    remove_reference :posts, :user
    add_foreign_key :users, :posts
    add_column :posts, :user_id, :integer
  end
end
