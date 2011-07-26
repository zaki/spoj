$:<<File.join(File.dirname(__FILE__), '..')
require 'arith'

describe Arith do

  subject {Arith.new}

  context "addition" do
    it "adds 1 and 1" do
      fit '1+1',
<<EOS
 1
+1
--
 2
EOS
    end

    it "adds 1 and 100" do
      fit '1+100',
<<EOS
   1
+100
----
 101
EOS
    end
    it "adds 100 and 1" do
      fit '100+1',
<<EOS
100
 +1
---
101
EOS
    end

    it "adds 9 and 9" do
      fit '9+9',
<<EOS
 9
+9
--
18
EOS
    end

    it "adds 19 and 9" do
      fit '19+9',
<<EOS
19
+9
--
28
EOS
    end

  end

  context "subtraction" do
    it "subtracts 1 from 5" do
      fit '5-1',
<<EOS
 5
-1
--
 4
EOS
    end

    it "subtracts 5 from 5" do
      fit '5-5',
<<EOS
 5
-5
--
 0
EOS
    end

    it "subtracts 5 from 10" do
      fit '10-5',
<<EOS
10
-5
--
 5
EOS
    end

    it "subtracts 105 from 105" do
      fit '105-105',
<<EOS
 105
-105
----
   0
EOS
    end

    it "subtracts 1 from 100" do
      fit '100-1',
<<EOS
100
 -1
 --
 99
EOS
    end


  end

  context "multiplication" do
    it "multiplies 2 by 2" do
      fit '2*2',
<<EOS
 2
*2
--
 4
EOS
    end

    it "multiplies 2 by 10" do
      fit '2*10',
<<EOS
  2
*10
---
  0
 2
 --
 20
EOS
    end
  end

  def fit(input, output)
    subject.arith(input).should == output
  end

end
