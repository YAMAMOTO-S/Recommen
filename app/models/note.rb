class Note < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true
  validates :content, presence: true

  belongs_to :user
  mount_uploader :image_url, ImageUploader

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
