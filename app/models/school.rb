class School < ApplicationRecord
  has_many :posts
  belongs_to :user, optional: true
  mount_uploader :image, ImageUploader
end
