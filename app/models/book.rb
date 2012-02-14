class Book < ActiveRecord::Base
  attr_accessible :name, :code
  belongs_to :author

  validates :name, :presence => true, :length => { maximum: 300 }
  validates :code, :presence => true, :length => { maximum: 300 }
  validates :author_id, :presence => true
end
