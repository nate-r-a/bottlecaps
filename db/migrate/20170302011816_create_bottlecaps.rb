class CreateBottlecaps < ActiveRecord::Migration
  def change
    create_table :bottlecaps do |t|
      t.string :name
      t.string :brewery

      t.timestamps null: false
    end
  end
end
