class Pin < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user

  has_many :tags
  has_many :boards, through: :tags
end
