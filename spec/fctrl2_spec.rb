$:<<File.join(File.dirname(__FILE__), '..')
require 'fctrl2'

describe Fctrl2 do

  subject { Fctrl2.new }

  it "works for 1" do
    subject.factorial(1).should == 1
  end

  it "works for 2" do
    subject.factorial(2).should == 2
  end

  it "works for 3" do
    subject.factorial(3).should == 6
  end

  it "works for 5" do
    subject.factorial(5).should == 120
  end

  it "works for 100" do
    subject.factorial(100).should == 93326215443944152681699238856266700490715968264381621468592963895217599993229915608941463976156518286253697920827223758251185210916864000000000000000000000000
  end
end
