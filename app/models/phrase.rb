class Phrase < ActiveRecord::Base

  belongs_to :list

  validates :text, :presence => true
  validates :translation, :presence => true

end
