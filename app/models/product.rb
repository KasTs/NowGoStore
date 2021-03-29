class Product < ApplicationRecord
    has_many :orders
    has_many :sales, through: :orders
    
    validates :name, presence: true,
                     uniqueness: true
    validates :description, presence: true
    validates :price_cents, presence: true,
                            numericality: { only_integer: true,
                                            greater_than_or_equal_to: 0 }
    
    def price
        price_cents.to_f / 100.0
    end
end
