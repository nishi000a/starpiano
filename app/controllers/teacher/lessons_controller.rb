class Teacher::LessonsController < ApplicationController
  def index
    @lessons = Lesson.page(params[:page]).per(8)
  end

  def show
  end

  def lesson_params
    params.require(:lesson).permit(:student_id, :name, :introduction, :post_id, :lesson_1, :lesson_2, :lesson_3, :lesson_4, :lesson_5)
  end

end
