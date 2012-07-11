require 'spec_helper'

describe SubmissionType do
  before { @submission_type = FactoryGirl.create(:submission_type) }
  subject { @submission_type }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @submission_type.name = '' }
    it { should_not be_valid }
  end
end
