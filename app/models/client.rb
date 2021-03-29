class Client < ApplicationRecord
    has_many :sales
    
    validates :name, presence: true
    validates :email, presence: true,
                      uniqueness: true
    validates :birthdate, presence: true
end
