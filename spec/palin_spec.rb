$:<<File.join(File.dirname(__FILE__), '..')
require 'palin'

describe Palin do

  subject { Palin.new }

  context "palindromes" do
    context "one-digit numbers" do
      it "responds to 1 with 2" do
        fit 1, 2
      end

      it "responds to 9 with 11" do
        fit 9, 11
      end
    end

    context "even length numbers" do
      it "responds to 1001 with 1111" do
        fit 1001, 1111
      end

      it "responds to 1991 with 2002" do
        fit 1991, 2002
      end

      it "responds to 9999 with 10001" do
        fit 9999, 10001
      end
    end

    context "odd length numbers" do
      it "responds to 101 with 111" do
        fit 101, 111
      end

      it "responds to 191 with 202" do
        fit 191, 202
      end

      it "responds to 999 with 1001" do
        fit 999, 1001
      end

      it "responds to 123321 with 124421" do
        fit 123321, 124421
      end

      it "responds to 129921 with 130031" do
        fit 129921, 130031
      end

      it "responds to 999999 with 1000001" do
        fit 999999, 1000001
      end
    end
  end

  context "non-palindromes" do
    it "responds to 10 with 11" do
      fit 10, 11
    end

    it "responds to 50 with 55" do
      fit 50, 55
    end

    it "responds to 19 with 22" do
      fit 19, 22
    end

    it "responds to 100 with 101" do
      fit 100, 101
    end

    it "responds to 899 with 909" do
      fit 899, 909
    end
  end

  context "large numbers" do
    it "responds within 2 seconds for a million digit number" do
      input, output = '9'*1000000, '1'+'0'*999999+'1'

      _start = Time.now
      fit input, output
      _end = Time.now
      (_end - _start).should <= 2.0
    end
  end

  def fit(input, output)
    subject.next_palindrome(input.to_s).should == output.to_s
  end

end
