class Heroine < ApplicationRecord
  validates :name, presence: true
  validates :power_id, numericality: true
  validates :super_name, uniqueness: true
  belongs_to :power

  def self.find_by_power(power)
    Heroine.select { |heroine|
      heroine.power.name.include?(power)
    }
  end
end
