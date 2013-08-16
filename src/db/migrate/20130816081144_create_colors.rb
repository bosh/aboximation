class CreateColors < ActiveRecord::Migration
  def change
    create_table :colors do |t|
      t.string :name
      t.timestamps
    end

    add_column :bricks, :color, :integer
  end
end
