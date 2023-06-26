class Post < ApplicationRecord

  has_many :favorites, dependent: :destroy
  belongs_to :teacher
  belongs_to :lesson

  has_one_attached :profile_image

  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.png')
      profile_image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
      profile_image.variant(resize_to_limit: [100, 100]).processed
  end

  def favorited_by?(student)
    favorites.exists?(student_id: student.id)
  end

end