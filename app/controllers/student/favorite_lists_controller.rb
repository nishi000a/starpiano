class Student::FavoriteListsController < ApplicationController
  def index
    @favorite = current_student.favorites.order(created_at: :desc)
  end






end
