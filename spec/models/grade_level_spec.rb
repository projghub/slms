require 'spec_helper'

describe GradeLevel do
  before { @grade_level = FactoryGirl.create(:grade_level) }
  subject { @grade_level }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @grade_level.name = '' }
    it { should_not be_valid }
  end
end
