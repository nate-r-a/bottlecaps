class RenameBeerToDrink < ActiveRecord::Migration
  def change
    rename_column :bottlecaps, :name, :drink
  end
end
