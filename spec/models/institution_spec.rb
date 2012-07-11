require 'spec_helper'

describe Institution do
  before { @institution = FactoryGirl.create(:institution) }
  subject { @institution }

  it { should respond_to(:name) }
  it { should be_valid }

  describe "when name not present" do
    before { @institution.name = '' }
    it { should_not be_valid }
  end
end
