class ReviewsController < ApplicationController
  def create
    review = ReviewedBook.new(reviewed_book_params)
    if review.save!
      render status: 200, json: "Review for #{review[:user_id]} and #{review[:book_id]} is successfully added!"
    else
      render status: 400, json: review.errors.full_messages
    end
  end

  private

  def reviewed_book_params
    params.require(:review).permit(:user_id, :book_id, :text)
  end
end
