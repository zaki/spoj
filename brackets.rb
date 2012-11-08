a=%w(+ - * / %).map{|x|%[def#{x}(x);"(\#{self}#{x}\#{x})";end;]}.join
[Fixnum,Bignum,String].map{|x|x.class_eval(a+'def s;self.is_a?(String)?self:"(#{self})";end')}
gets;$<.lines{|x|puts eval(x).s}
