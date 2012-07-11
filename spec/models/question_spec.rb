require 'spec_helper'

describe Question do
  before { @question = FactoryGirl.create(:question) }
  subject { @question }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @question.name = '' }
    it { should_not be_valid }
  end
end
