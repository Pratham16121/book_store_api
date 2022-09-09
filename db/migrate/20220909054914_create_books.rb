class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :genre
      t.string :author
      t.integer :published_year
      t.bigint :price

      t.timestamps
    end
  end
end
