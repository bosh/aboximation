class CreateBricksSets < ActiveRecord::Migration
  def change
    create_table :bricks_kits do |t|
      t.references :brick
      t.references :kit
      t.integer :count
      t.timestamps
    end
  end
end
