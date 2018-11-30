class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :photos, dependent: :destroy
  validates :brand, presence: true
  validates :color, presence: true
  validates :year, presence: true, numericality: true
  validates :model, presence: true
  validates :location, presence: true
  validates :title, presence: true
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  # before_save :val_coords

  accepts_nested_attributes_for :photos
end
