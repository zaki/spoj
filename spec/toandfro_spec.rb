$:<<File.join(File.dirname(__FILE__), '..')
require 'toandfro'

describe Toandfro do

  subject { Toandfro.new }

  it "solves input" do
    subject.toandfro(5, "toioynnkpheleaigshareconhtomesnlewx").should == "theresnoplacelikehomeonasnowynightx"
  end
end
