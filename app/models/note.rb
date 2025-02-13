class Note < ApplicationRecord
  belongs_to :customer
  belongs_to :staff

  validates :content, presence: true
end