class Student::HomesController < ApplicationController
  def top
    @posts = Post.limit(8).offset(4)
  end
end
