class Movie < ApplicationRecord
  belongs_to :category

  validates :name, presence: true 
  validates :year, presence: true 
end
