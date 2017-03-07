class AddUniqueToBottlecaps < ActiveRecord::Migration
  def change
    add_column :bottlecaps, :unique, :boolean
  end
end
