class ChangeMakerToBrand < ActiveRecord::Migration
  def change
    rename_column :bottlecaps, :maker, :brand
  end
end
