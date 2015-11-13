class Board < ActiveRecord::Base
  belongs_to :user

  has_many :tags
  has_many :pins, through: :tags
end
