class CreateBricks < ActiveRecord::Migration
  def change
    create_table :bricks do |t|
      t.string :name
      t.string :part_number
      t.string :brickowl_url
      t.timestamps
    end
  end
end
