class Phrase < ActiveRecord::Base

  validates :text, :presence => true
  validates :translation, :presence => true

end
