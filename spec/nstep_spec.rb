$:<<File.join(File.dirname(__FILE__), '..')
require 'nstep'

describe Nstep do

  subject { Nstep.new }

  it "1,5 -> No Number" do
    subject.nstep(1,5).should == 'No Number'
  end

  it "0,0 -> 0" do
    subject.nstep(0,0).should == 0
  end
  it "1,1 -> 1" do
    subject.nstep(1,1).should == 1
  end
  it "2,2 -> 4" do
    subject.nstep(2,2).should == 4
  end
  it "2,0 -> 2" do
    subject.nstep(2,0).should == 2
  end
  it "5,3 -> 7" do
    subject.nstep(5,3).should == 7
  end
  it "4,2 -> 6" do
    subject.nstep(4,2).should == 6
  end
  it "6,6 -> 12" do
    subject.nstep(6,6).should == 12
  end
end
