class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.string :url
      t.money :minimum_order
      t.money :shipping
      t.integer :days_to_shipment

      t.timestamps
    end
  end
end
