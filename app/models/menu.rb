class Menu < ApplicationRecord
  has_many :reservations

  validates :name, presence: true
  validates :duration, numericality: { only_integer: true, greater_than: 0 }
end