class School < ApplicationRecord
  has_many :posts
  belongs_to :user
  mount_uploader :image, ImageUploader
end
