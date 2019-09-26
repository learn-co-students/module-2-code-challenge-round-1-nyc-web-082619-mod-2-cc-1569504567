class Heroine < ApplicationRecord
    validates :name, presence: true
    validates :super_name, presence: true

    has_one :power
end
