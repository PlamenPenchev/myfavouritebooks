class BooksController < ApplicationController
  def index
    @books = Book.all
  end
  
  def show
    id = params[:id] # retrieve movie ID from URI route
    @book = Book.find(id) # look up movie by unique ID
    # will render app/views/books/show.html.haml by default
  end
    # add to the books_controller.rb
  def new
    @book = Book.new
    # default: render 'new' template
  end
  # in movies_controller.rb
  def create
    params.require(:book)
    permitted = params[:book].permit(:title,:genre,:publish_date,:isbn, :description)
    @book = Book.create!(permitted)
    flash[:notice] = "#{@book.title} was successfully created."
    redirect_to books_path
  end
  # in movies_controller.rb

  def edit
    @book = Book.find params[:id]
  end

  def update
   @book = Book.find params[:id]
    params.require(:book)
    permitted = params[:book].permit(:title,:genre,:publish_date,:isbn, :description)
    @book.update_attributes!(permitted)
    flash[:notice] = "#{@book.title} was successfully updated."
    redirect_to book_path(@book)
  end
  def destroy
    @book = Book.find(params[:id])
    @book.destroy
    flash[:notice] = "Book '#{@book.title}' deleted."
    redirect_to books_path
  end
end