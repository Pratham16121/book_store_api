class User < ApplicationRecord
  validates :user_name, uniqueness: true

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness:true, format: { with: VALID_EMAIL_REGEX }

  has_many :buyed_books, dependent: :destroy
  has_many :reviewed_books, dependent: :destroy

end
