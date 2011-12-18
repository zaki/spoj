$:<<File.join(File.dirname(__FILE__), '..')
require 'gnyr09f'

describe Gnyr09f do

  subject { Gnyr09f.new }

  it "solves case 1" do
    subject.one_case(5, 2).should == 6
  end
  it "solves case 1" do
    subject.one_case(100, 90).should == 23076518
  end
end

