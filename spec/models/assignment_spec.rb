require 'spec_helper'

describe Assignment do
  before { @assignment = FactoryGirl.create(:assignment) }
  subject { @assignment }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @assignment.name = '' }
    it { should_not be_valid }
  end
end
