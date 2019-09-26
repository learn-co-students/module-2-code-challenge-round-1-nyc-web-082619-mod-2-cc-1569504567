class Heroine < ApplicationRecord
    belongs_to :power
    validates :super_name, uniqueness: true

    def heroine_power
        Power.find_by_id(self.power_id)
    end
end
