class Flat < ApplicationRecord
  validates :name, :address, :price_per_night, :number_of_guests, presence: true
  validates :number_of_guests,
            :price_per_night,
            numericality: { only_integer: true,
                            greater_than_or_equal_to: 0 }
end
