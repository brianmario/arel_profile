class Star < ActiveRecord::Base
  self.table_name = :starred_items

  belongs_to :user
  belongs_to :item
end
