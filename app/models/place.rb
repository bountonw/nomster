class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  
  geocoded_by :address
  after_validation :geocode

  validates :name, presence: true, length: { minimum: 3}
  validates :description, presence: true, length: { minimum: 7}
  validates :address, presence: true, length: { minimum: 10}
end
