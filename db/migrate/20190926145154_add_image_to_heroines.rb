class AddImageToHeroines < ActiveRecord::Migration[5.1]
  def change
    add_column :heroines, :image, :string
  end
end
