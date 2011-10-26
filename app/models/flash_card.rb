class FlashCard < ActiveRecord::Base

  belongs_to :list

  validates :question, :presence => true
  validates :answer, :presence => true

end
