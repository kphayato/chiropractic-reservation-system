class Staff < ApplicationRecord
  has_many :reservations
  has_many :notes
  has_many :shifts
  has_many :notifications

  validates :name, presence: true
  validates :role, presence: true
  validates :store, presence: true
end