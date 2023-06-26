class Student::FavoritesController < ApplicationController

  def create
    post = Post.find(params[:post_id])
    favorite = current_student.favorites.new(post_id: post.id)
    favorite.save
    redirect_to student_posts_path
  end

  def destroy
    post = Post.find(params[:post_id])
    favorite = current_student.favorites.find_by(post_id: post.id)
    favorite.destroy
    redirect_to student_posts_path
  end

end
