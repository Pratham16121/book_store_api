class BuyedBooksController < ApplicationController
  def new
    @buyedbook = BuyedBook.new
  end

  def create
    @buyedBook = BuyedBook.new(buyed_book_params)
    # byebug
    if @buyedBook.save!
      render json: "User with user_id #{@buyedBook[:user_id]} has buyed #{@buyedBook[:quantity]} books with book_id #{@buyedBook[:book_id]}"
    else
      render json: "Either the user or the book does not exist!"
    end
  end

  private
  def buyed_book_params
    params.require(:buyed_book).permit(:user_id, :book_id, :quantity)
  end
end
