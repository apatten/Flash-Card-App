class List < ActiveRecord::Base

  has_many :flash_cards
  validates :title, :presence => true

end