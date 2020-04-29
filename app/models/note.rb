class Note < ApplicationRecord
  belongs_to :user
  has_many :favorites
  mount_uploader :image_url, ImageUploader

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
