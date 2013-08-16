class Store < ActiveRecord::Base
  has_many :bricks, through: :bricks_stores
end
