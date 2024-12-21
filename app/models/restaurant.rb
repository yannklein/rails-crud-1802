class Restaurant < ApplicationRecord
  validates :name, presence: true
  # validates(:address, {presence: true, uniquiness: true})
  validates :address, presence: true, uniqueness: true
  validates :rating, inclusion: { in: 1..5 }
end
