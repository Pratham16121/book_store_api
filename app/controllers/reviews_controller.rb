class ReviewsController < ApplicationController
  def create
    @review = ReviewedBook.new(reviewed_book_params)
    if @review.save!
      render json: "Review for #{user_id} and #{book_id} is successfully added!"
    else
      render json: @review.errors.full_messages
    end
  end

  private

  def reviewed_book_params
    params.require(:review).permit(:user_id, :book_id, :text)
  end
end
