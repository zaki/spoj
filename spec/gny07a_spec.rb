$:<<File.join(File.dirname(__FILE__), '..')
require 'gny07a'

describe Gny07a do

  subject { Gny07a.new }

  it "4 MISSPELL" do
    subject.one_case(4, 'MISSPELL').should == 'MISPELL'
  end
  it "1 A" do
    subject.one_case(1, 'A').should == ''
  end
end
