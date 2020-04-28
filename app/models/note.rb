class Note < ApplicationRecord
  validates :title, presence: true
  validates :image_url, presence: true
  validates :content, presence: true

  belongs_to :user
  mount_uploader :image_url, ImageUploader
end
