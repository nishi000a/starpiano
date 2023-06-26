class Teacher::CustomersController < ApplicationController
  before_action :authenticate_teacher!

  def show
    @teacher = current_teacher
    # DM機能
    # 自分が所属するDMの部屋特定
    @entries = Entry.where(teacher_id: current_teacher.id)
  end

  def withdraw
    @teacher = current_teacher
  end

  def unsubscribe
    @teacher = current_teacher
  end

  def edit
    @teacher = current_teacher
  end

  def update
    @teacher = current_teacher
    if @teacher.update(teacher_params)
       redirect_to teacher_customers_path, notice: "個人情報を編集しました。"
    else
        render :edit, notice: "個人情報の編集に失敗しました。"
    end
  end

  def destroy
    current_teacher.update(is_deleted: true)
    reset_session

    redirect_to new_teacher_session_path, notice: "アカウントを削除しました。"
  end

  private

  def teacher_params
    params.require(:teacher).permit(:first_name, :last_name, :first_name_kana, :last_name_kana, :telephone_number, :postal_code, :address, :email)
  end

end