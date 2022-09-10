class BooksController < ApplicationController

  def index
    book_list = Book.all
    render status: 200, json: book_list.select(:id, :title, :genre, :author, :published_year, :price)
  end

  def create
    new_book = Book.new(new_book_params)
    if new_book.save!
      render status: 200, json: 'New Book has been Added!'
    else
      render status: 400, json: 'Could not add book!'
    end
  end

  def destroy
    del_book = delete_book_params
    if Book.destroy(Book.find_by(del_book)[:id])
      render status: 200, json: 'Book successfully Deleted!'
    else
      render status: 400, json: 'Could not delete book!'
    end
  end

  private

  def new_book_params
    params.require(:book).permit(:title, :genre, :author, :published_year, :price, :quantity)
  end

  def delete_book_params
    params.require(:book).permit(:title)
  end

end
