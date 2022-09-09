class User < ApplicationRecord
  validates :user_name, uniqueness: true
  has_many :buyed_books, dependent: :destroy
  has_many :reviewed_books
end
