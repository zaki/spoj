$:<<File.join(File.dirname(__FILE__), '..')
require 'coins'

describe Coins do

  subject { Coins.new }

  it "solves case 1" do
    subject.value(12).should == 13
  end
  it "solves case 1000000000" do
    subject.value(1000000000).should == 4243218150
  end
end
