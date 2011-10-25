require 'spec_helper'

describe Phrase do
  subject { phrase }

  let(:phrase) { Factory(:phrase) }

  it { should be_valid }
  it { should validate_presence_of(:text) }
  it { should validate_presence_of(:translation) }

end