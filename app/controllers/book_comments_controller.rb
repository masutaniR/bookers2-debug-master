class BookCommentsController < ApplicationController
  before_action :ensure_correct_user, only: [:destroy]

  def create
    book = Book.find(params[:book_id])
    comment = current_user.book_comments.new(book_comment_params)
    comment.book_id = book.id
    if comment.save
      redirect_to book_path(book)
    else
      @book = Book.find(params[:book_id])
      @book_new = Book.new
      @book_comment = comment
      render 'books/show'
    end
  end

  def destroy
    book = Book.find(params[:book_id])
    BookComment.find_by(id: params[:id], book_id: params[:book_id]).destroy
    redirect_to book_path(book)
  end

  private
    def book_comment_params
      params.require(:book_comment).permit(:comment)
    end

    def ensure_correct_user
      comment = BookComment.find_by(id: params[:id], book_id: params[:book_id])
      unless comment.user == current_user
        redirect_to books_path
      end
    end
end
