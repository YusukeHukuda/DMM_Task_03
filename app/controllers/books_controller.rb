class BooksController < ApplicationController
  def create
    @book = Book.new(book_params)
    @book.user_id = current_user.id
    if @book.save
      redirect_to book_path(@book)
    else
      @books = Book.all
      render 'index'
    end
  end

  def index
    @books = Book.all
    @user = current_user
    @book = Book.new
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
