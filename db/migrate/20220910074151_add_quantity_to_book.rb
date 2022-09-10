class AddQuantityToBook < ActiveRecord::Migration[6.0]
  def change
    add_column :books, :quantity, :bigint
  end
end
