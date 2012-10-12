class Item < ActiveRecord::Base
  has_many :stars
  has_many :starring_users, through: :stars, source: :user
end
