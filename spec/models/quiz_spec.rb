require 'spec_helper'

describe Quiz do
  before { @quiz = FactoryGirl.create(:quiz) }
  subject { @quiz }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @quiz.name = '' }
    it { should_not be_valid }
  end
end
