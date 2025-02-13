class Shift < ApplicationRecord
  belongs_to :staff

  validates :work_date, presence: true
  validates :shift_type, presence: true
end