# frozen_string_literal: true

class Student::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
  before_action :student_state, only: [:create]

  # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

# ゲストログイン
  # def guest_sign_in
  #   student = Student.guest
  #   sign_in student
  #   redirect_to student_root_path, notice: 'ゲストユーザーとしてログインしました。'
  # end


  # protected

  #   # If you have extra params to permit, append them to the sanitizer.
  #   # def configure_sign_in_params
  #   #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  #   # end

  #   def after_sign_in_path_for(_resource)
  #     student_root_path
  #   end

  #   def after_sign_out_path_for(_resource)
  #     student_session_path
  #   end

  #   def reject_student
  #     @student = Student.find_by(email: params[:student][:email].downcase)
  #     return unless @student
  #     return unless @student.valid_password?(params[:student][:password]) && (@student.is_active == false)

  #     flash[:warning] = '退会済みのアカウントです'
  #     redirect_to student_session_path
  #   end

protected

  def student_state
    @Student = Student.find_by(email: params[:student][:email].downcase)
    if @student
      if (@student.valid_password?(params[:student][:password]) && (@student.active_for_authentication? == false))
        flash[:error] = "退会済のためログインできません。"
        redirect_to new_student_session_path
      end
    end
  end

end
