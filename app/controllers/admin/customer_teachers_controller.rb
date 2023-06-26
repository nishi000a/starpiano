class Admin::CustomerTeachersController < ApplicationController

  def index
  	@teachers = Teacher.page(params[:page]).per(8)
  end

  def edit
  	@teacher = Teacher.find(params[:id])
  end

  def update
  	@teacher = Teacher.find(params[:id])
  	if @teacher.update(teacher_params)
  		redirect_to admin_customer_teachers_path(@teacher), notice: "個人情報を編集しました。"
  	else
  		render "edit", notice: "個人情報の編集に失敗しました。"
  	end
  end

  def show
     @teacher = Teacher.find(params[:id])
  end

  private

  def teacher_params
  	params.require(:teacher).permit(
  	  :email, :last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :is_deleted)
  end
end
