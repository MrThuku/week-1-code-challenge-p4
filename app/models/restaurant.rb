class Restaurant < ApplicationRecord
    has_many :restaurant_pizzas
    has_many :pizzas, through: :restaurant_pizzas
    # has_many :restaurants, through: :restaurants
    validates :name, presence: true, uniqueness: true
    validates :address, presence: true, uniqueness: true
end
