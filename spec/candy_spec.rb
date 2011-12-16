$:<<File.join(File.dirname(__FILE__), '..')
require 'candy'

describe Candy do

  subject { Candy.new }

  it "solves case 1" do
    subject.one_case([1,1,1,1,6]).should == 4
  end
  it "solves case 2" do
    subject.one_case([3,4]).should == -1
  end
end
