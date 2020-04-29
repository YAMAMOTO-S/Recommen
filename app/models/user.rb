class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_many :notes
  has_many :favorites
  has_many :favorite_notes, through: :favorites, source: :note
  mount_uploader :image, ImageUploader
end
