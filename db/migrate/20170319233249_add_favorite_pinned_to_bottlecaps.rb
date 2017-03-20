class AddFavoritePinnedToBottlecaps < ActiveRecord::Migration
  def change
    add_column :bottlecaps, :favorite, :boolean
    add_column :bottlecaps, :pinned, :boolean
  end
end
