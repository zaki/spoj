$:<<File.join(File.dirname(__FILE__), '..')
require 'fashion'

describe Fashion do

  subject { Fashion.new }

  it "solves case 1" do
    subject.one_case([1,1], [3,2]).should == 5
  end
  it "solves case 2" do
    subject.one_case([2,3,2], [1,3,2]).should == 15
  end
end
