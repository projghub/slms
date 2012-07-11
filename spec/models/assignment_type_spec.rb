require 'spec_helper'

describe AssignmentType do
  before { @assignment_type = FactoryGirl.create(:assignment_type) }
  subject { @assignment_type}

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @assignment_type.name = '' }
    it { should_not be_valid }
  end
end

