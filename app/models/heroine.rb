class Heroine < ApplicationRecord
    validates :name, presence: true
    validates :super_name, presence: true

    has_one :power

    def self.search(search)
        if search
            power = Power.find_by(name: search)
            if power
                self.where(power_id: power)
            else
                Power.all
            end
        else
            Power.all
        end
    end
end
