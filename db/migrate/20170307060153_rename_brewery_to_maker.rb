class RenameBreweryToMaker < ActiveRecord::Migration
  def change
    rename_column :bottlecaps, :brewery, :maker
  end
end
