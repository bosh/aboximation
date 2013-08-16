class CreateKits < ActiveRecord::Migration
  def change
    create_table :kits do |t|
      t.string :name
      t.string :url
      t.references :owner
      t.timestamps
    end
  end
end
