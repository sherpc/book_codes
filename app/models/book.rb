class Book < ActiveRecord::Base
  belongs_to :author

  validates :name, :length => { maximum: 300 }
  validates :code, :length => { maximum: 300 }
end
