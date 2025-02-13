class Notification < ApplicationRecord
  belongs_to :staff

  validates :message, presence: true
end