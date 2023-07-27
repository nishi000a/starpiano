class Student::FavoritesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    favorite = current_student.favorites.new(post_id: post.id)
    favorite.save
    flash[:notice] = 'いいねをしました。'
    redirect_to student_post_path(post.id)
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_student.favorites.find_by(post_id: post.id)
    favorite.destroy
    flash[:notice] = 'いいねを外しました。'
    redirect_to student_post_path(post.id)
  end

end
