class Reservation < ApplicationRecord
  belongs_to :customer
  belongs_to :staff
  belongs_to :menu
end
