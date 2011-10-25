require 'spec_helper'

describe List do
  subject { list }

  let(:list) { Factory(:list) }

  it { should be_valid }
  it { should validate_presence_of(:title) }

end
