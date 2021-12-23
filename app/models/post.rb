class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :fav_users, through: :favorites, source: :user
  has_many :rates, dependent: :destroy
  has_many :rate_users, through: :rates, source: :user
  has_many :labels, dependent: :destroy
end
