class Student::HomesController < ApplicationController
  def top
    @posts = Post.limit(8).offset(4)

# 以下を追加
  def guest_sign_in
    student = Student.find_or_create_by!(email: 'guest@example.com') do |student|
      student.password = SecureRandom.urlsafe_base64
      # user.skip_confirmation!  # Confirmable を使用している場合は必要
      # 例えば name を入力必須としているならば， user.name = "ゲスト" なども必要
    end
    sign_in student
    redirect_to student_root_path, notice: 'ゲストユーザーとしてログインしました。'
  end
  end
end
