class AddParentToBottlecaps < ActiveRecord::Migration
  def change
    add_column :bottlecaps, :parent, :string
  end
end
