class Heroine < ApplicationRecord
  validates :name, presence: true
  validates :power_id, numericality: true
  validates :super_name, uniqueness: true
  belongs_to :power
end
