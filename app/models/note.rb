class Note < ApplicationRecord
  validates :title, :content, presence: true
end
