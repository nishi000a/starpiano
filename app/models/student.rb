class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :lessons, dependent: :destroy

  def self.guest
    find_or_create_by!(email: 'guest@example.com') do |student|
      student.password = SecureRandom.urlsafe_base64
      student.password_confirmation = student.password
      student.first_name = "ゲストユーザー"
    end
  end



end

