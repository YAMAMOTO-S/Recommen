class Note < ApplicationRecord
  acts_as_taggable
  validates :title, presence: true
  validates :image_url, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :favorites, dependent: :delete_all
  
  mount_uploader :image_url, ImageUploader

  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  
end
