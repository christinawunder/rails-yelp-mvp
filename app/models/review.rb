class Review < ApplicationRecord
  REVIEWS = [*0..5]

  belongs_to :restaurant
  validates :rating, presence: true, inclusion: REVIEWS
  validates :rating, numericality: true
  validates :content, presence: true
end
