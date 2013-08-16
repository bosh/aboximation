class CreateBricksStores < ActiveRecord::Migration
  def change
    create_table :bricks_stores do |t|
      t.references :brick
      t.references :store
      t.integer :count
      t.timestamps
    end
  end
end
