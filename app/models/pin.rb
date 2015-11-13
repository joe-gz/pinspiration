class Pin < ActiveRecord::Base
  belongs_to :user

  has_many :tags
  has_many :boards, through: :tags
end
