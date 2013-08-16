class Brick < ActiveRecord::Base
  belongs_to :color
  has_many :kits, through: :bricks_kits
  has_many :stores, through: :bricks_stores
end
