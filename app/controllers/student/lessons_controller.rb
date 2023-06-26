class Student::LessonsController < ApplicationController

  def new
    @post = Post.find(params[:post_id])
    @lesson = Lesson.new
  end


  def confirm
    @post = Post.find(params[:post_id])
    @lesson = Lesson.new
  end

  def create
    lesson = Lesson.new
    lesson.post_id = params[:post][:post_id]
    lesson.lesson_date = params[:post][:lesson_date]
    lesson.student_id = current_student.id
    if lesson.save
      redirect_to student_complete_path, notice: "正常に申込み受付致しました。"
    else
      redirect_to student_root_path, notice: "申込み受付に失敗しました。再度お試しください。"
    end
  end


  def complete
  end

  def index
    @lessons = current_student.lessons
  end

  def show
    @lessons = current_student.lessons
  end

  def lesson_params
    params.require(:lesson).permit(:student_id, :name, :introduction, :post_id, :lesson_1, :lesson_2, :lesson_3, :lesson_4, :lesson_5)
  end


end