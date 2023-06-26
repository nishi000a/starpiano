class Teacher::PostsController < ApplicationController
  before_action :authenticate_teacher!

  def index
  	@posts = Post.page(params[:page]).per(10)
  end

  def show
  	@post = Post.find(params[:id])
  end

  def new
  	@post = Post.new

  end

  def create
  	@post = Post.new(post_params)
    @post.teacher_id = current_teacher.id
  	if @post.save
  	   redirect_to teacher_posts_path(@post)
  	else
  	   render "new"
  	end
  end

  def edit
  	@post = Post.find(params[:id])
  end

  def update
  	@post = Post.find(params[:id])
  	if @post.update(post_params)
  	  redirect_to teacher_post_path(@post.id)
  	else
  		render "edit"
  	end
  end

  private

  def post_params
  	params.require(:post).permit(:name,:image_id,:introduction,:is_active, :profile_image, :lesson_1, :lesson_2, :lesson_3, :lesson_4, :lesson_5)
  end



end


