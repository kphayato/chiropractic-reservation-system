class Customer < ApplicationRecord
  has_many :reservations
  has_many :notes

  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :phone, presence: true, uniqueness: true
end