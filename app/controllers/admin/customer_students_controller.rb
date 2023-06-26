class Admin::CustomerStudentsController < ApplicationController

  def index
  	@students = Student.page(params[:page]).per(10)
  end

  def edit
  	@student = Student.find(params[:id])
  end

  def update
  	@student = Student.find(params[:id])
  	if @student.update(student_params)
  		redirect_to admin_customer_students_path(@student), notice: "個人情報を編集しました。"
  	else
  		render "edit", notice: "個人情報の編集に失敗しました。"
  	end
  end

  def show
     @student = Student.find(params[:id])
  end

  private

  def student_params
  	params.require(:student).permit(:email, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :is_deleted)
  end
end
