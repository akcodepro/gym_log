class Workout < ApplicationRecord
  has_many :exercises

  validates :name, presence: true
  validates :date, presence: true
end
