class Note < ApplicationRecord
  validates :title, :content, presence: true

  belongs_to :user

  mount_uploader :image_url, ImageUploader
end
