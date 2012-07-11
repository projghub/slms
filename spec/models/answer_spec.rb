require 'spec_helper'

describe Answer do
  before { @answer = FactoryGirl.create(:answer) }
  subject { @answer }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @answer.name = '' }
    it { should_not be_valid }
  end
end
