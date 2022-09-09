class AddUniqueIndexToBooksAndBuyedBooksAndUserNameToUser < ActiveRecord::Migration[6.0]
  def change
    add_index :users, :user_name, unique: true
    add_index :books, [:title, :author], unique: true
    add_index :buyed_books, [:user_id, :book_id], unique: true
  end
end
