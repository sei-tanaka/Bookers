class BooksController < ApplicationController
  def index
    @book1 = Book.new
    @books = Book.all
  end

  def create
    book2 = Book.new(book_params)
    book2.save
    redirect_to book_path(book2)
    flash[:success] = "Book was successfully created."
  end

  def show
    @book3 = Book.find(params[:id])
  end

  def edit
    @book4 = Book.find(params[:id])
  end

  def update
    book5 = Book.find(params[:id])
    book5.update(book_params)
    redirect_to book_path(book5.id)
    flash[:notice] = "Book was successfully updated."
  end

  def destroy
    book6 = Book.find(params[:id])
    book6.destroy
    redirect_to books_path
    flash[:delete] = "Book was successfully destroyed."
  end

  private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end
