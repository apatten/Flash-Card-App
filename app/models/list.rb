class List < ActiveRecord::Base

  has_many :phrases
  validates :title, :presence => true

end