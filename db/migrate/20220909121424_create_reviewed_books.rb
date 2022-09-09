class CreateReviewedBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :reviewed_books do |t|
      t.references :user, foreign_key: true, class_name: 'User', index: true
      t.references :book, foreign_key: true, class_name: 'Book', index: true
      t.string :text
      
      t.timestamps
    end
  end
end
