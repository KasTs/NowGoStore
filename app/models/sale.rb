class Sale < ApplicationRecord

    belongs_to :client
    has_many :orders
    has_many :products, through: :orders
end
