class AddImageToBottlecaps < ActiveRecord::Migration
  def change
    add_column :bottlecaps, :image, :string
  end
end
