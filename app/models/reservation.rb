class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :staff
  belongs_to :menu

  validates :start_time, presence: true
  validates :end_time, presence: true
  validates :status, presence: true, inclusion: { in: ["確定", "キャンセル", "変更"] }
end