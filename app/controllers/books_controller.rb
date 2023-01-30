class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_book_id = current_user.id
    @book.save
    redirect_to book_path(@book)
  end

  def index
  end

  def show
  end

  def edit
  end
end

private

  def book_params
    params.require(:book).permit(:title, :body)
  end
