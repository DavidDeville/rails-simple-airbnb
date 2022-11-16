class Flat < ApplicationRecord

  validates :name, :address, :description, :price_per_night, :number_of_guests, presence: true
  validates :price_per_night, numericality: { only_integer: true },
            comparison: { greater_than_or_equal_to: 20, less_than_or_equal_to: 1000, message: "doit être entre 25 et 1000"}
end
