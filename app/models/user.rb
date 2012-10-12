class User < ActiveRecord::Base
  has_many :stars
  has_many :starred_items, through: :stars, source: :item
end
