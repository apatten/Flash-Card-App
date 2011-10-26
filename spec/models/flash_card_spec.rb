require 'spec_helper'

describe FlashCard do
  subject { flash_card }

  let(:flash_card) { Factory(:flash_card) }

  it { should be_valid }
  it { should validate_presence_of(:question) }
  it { should validate_presence_of(:answer) }

end