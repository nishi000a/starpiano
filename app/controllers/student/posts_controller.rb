class Student::PostsController < ApplicationController
  def index
    @counts = Post.count
    @posts = Post.all.page(params[:page]).per(8)
    @post_searches = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def search
    search_word = params[:post][:word]
    @post_searches = Post.where("introduction LIKE ? or name LIKE ?", "%#{search_word}%", "%#{search_word}%").page(params[:page]).per(8)
    @counts = @post_searches.count
    if @counts > 0
      flash.now[:notice] = "検索結果が#{@counts}件見つかりました。"
    else
      flash.now[:alert] = "検索結果が見つかりませんでした。"
    end
  end


  private

  def post_params
    params.require(:post).permit(:genre_id, :name, :introduction, :is_active, :profile_image)
  end

end
