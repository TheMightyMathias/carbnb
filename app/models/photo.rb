class Photo < ApplicationRecord
  mount_uploader :picture, PhotoUploader
  belongs_to :car
end
