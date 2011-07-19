$:<<File.join(File.dirname(__FILE__), '..')
require 'opn'

describe Opn do

  it "transforms simple expressions" do
    fit 'a+b', 'ab+'
  end

  it "transforms simple expression with a paren" do
    fit '(a+b)', 'ab+'
  end

  it "transforms longer expressions" do
    fit '(a+(b*c))', 'abc*+'
  end

  it "transforms longer expressions" do
    fit '((a+b)*(z+x))', 'ab+zx+*'
  end

  it "transforms longer expressions" do
    fit '((a+t)*((b+(a+c))^(c+d)))', 'at+bac++cd+^*'
  end

  def fit(input, output)
    subject.rpn(input).should == output
  end
end
