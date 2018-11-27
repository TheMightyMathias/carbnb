class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :photos, dependent: :destroy
  validates :brand, presence: true
  validates :color, presence: true
  validates :year, presence: true, numericality: true
  validates :model, presence: true
  validates :location, presence: true

  def self.search(search)
    where("name LIKE ?", "%#{search}%")
    where("content LIKE ?", "%#{search}%")
  end

end
