$:<<File.join(File.dirname(__FILE__), '..')
require 'julka'

describe Julka do

  subject { Julka.new }

  it "10,2 -> 6,4" do
    subject.julka(10,2).should == [6,4]
  end
  it "9,9" do
    subject.julka(9,9).should == [9,0]
  end
end
