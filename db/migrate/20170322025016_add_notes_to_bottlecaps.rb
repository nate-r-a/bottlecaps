class AddNotesToBottlecaps < ActiveRecord::Migration
  def change
    add_column :bottlecaps, :notes, :text
  end
end
