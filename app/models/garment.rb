class Garment < ApplicationRecord
  has_attached_file :image
  validates :image, presence: true
end
