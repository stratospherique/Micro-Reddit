class Addforeighkeys < ActiveRecord::Migration[5.1]
  def change
    add_foreign_key :posts, :comments
    add_foreign_key :users, :comments
    add_column :comments, :post_id, :integer
    add_column :comments, :user_id, :integer
  end
end
