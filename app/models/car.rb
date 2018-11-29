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
  accepts_nested_attributes_for :photos
end
