class BooksController < ApplicationController

  def create
    @book = Book.new(book_params)
    if @book.save!
      render json: 'New Book has been Added!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def book_params
    params.require(:book).permit(:title, :genre, :author, :published_year, :price)
  end
end
