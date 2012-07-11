require 'spec_helper'

describe Classroom do
  before { @classroom = FactoryGirl.create(:classroom) }
  subject { @classroom }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @classroom.name = '' }
    it { should_not be_valid }
  end
end
