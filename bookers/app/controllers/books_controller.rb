class BooksController < ApplicationController
  def new
  
  end

  def index
     @books = Book.all
     @book = Book.new
     #全部出るから名前を複数形にしただけ、おそらく
  end

  def edit
    @book = Book.find(params[:id]) 

  end

  def destroy
    book = Book.find(params[:id])
    book.destroy
    redirect_to book_path
  end

  def create
  # ストロングパラメーターを使用詳細は下。新しいものの中に何を入れるのか？タイトルとボディ
    book = Book.new(book_params)
  # 投稿されたらDBへ保存する
    book.save
  # トップ画面へリダイレクト→それ自身の詳細画面へリダイレクトしてあげる_pathで[:id]とかの代用ができている
  # 多分名前付きルートで[book]を指定した意味がここにある
    redirect_to book_path(book.id) 
  end

  def show
    @book = Book.find(params[:id]) 
    #これをbooks/showにアクセスした時に行う
  end

  def update
    book = Book.find(params[:id])
    book.update(book_params)
    redirect_to books_path(book.id)
    # ここら辺何をしてるのか復習する
  end

  private
   
  def book_params
    params.require(:book).permit(:title, :body)
    #データベースからとってくる
  end
end
