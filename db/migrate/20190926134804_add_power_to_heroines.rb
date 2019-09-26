class AddPowerToHeroines < ActiveRecord::Migration[5.1]
  def change
    add_column :Heroines, :power_id, :integer, default: nil
  end
end
