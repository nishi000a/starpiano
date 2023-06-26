class Student::CustomersController < ApplicationController
  before_action :authenticate_student!

  def show
    @student = current_student
  end

  def withdraw
    @student = current_student
  end

  def unsubscribe
    @student = current_student
  end

  def edit
    @student = current_student
  end

  def update
    @student = current_student
    if @student.update(student_params)
       redirect_to student_customers_path, notice: "個人情報を編集しました。"
    else
        render :edit, notice: "個人情報の編集に失敗しました。"
    end
  end

  def destroy
    current_student.update(is_deleted: true)
    reset_session
    redirect_to new_student_session_path, notice: "アカウントを削除しました。"
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :telephone_number, :postal_code, :address)
  end
end
