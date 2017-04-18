class Listing < ApplicationRecord
  belongs_to :vendor
  validates :quantity, presence: true #value {minimum: 1}
end
