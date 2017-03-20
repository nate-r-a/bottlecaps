class RemoveUniqueFromBottlecaps < ActiveRecord::Migration
  def change
    remove_column :bottlecaps, :unique, :boolean
  end
end
