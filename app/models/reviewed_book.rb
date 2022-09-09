class ReviewedBook < ApplicationRecord
  validates :review_id, uniqueness: { scope: [:user_id, :book_id] }

  belongs_to :user
  belongs_to :book
  belongs_to :review
end
