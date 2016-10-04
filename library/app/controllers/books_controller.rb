class BooksController < ApplicationController
  def index
    # your code here
    @books = Book.all
    render :index

  end

  def new
    # your code here
  end

  def create
    # your code here
    b = Book.new(params[:book])
    b.create
    redirect_to book_url
  end

  def destroy
    # your code here
    # fail
    Book.find(params[:id]).destroy
    redirect_to book_url
  end

  private
  def book_params
    params.require(:book).permit(:title, :author)
  end
end
