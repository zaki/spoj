$a=''
%w(+ - * / %).map{|x|$a<<"def#{x}(x);\"(\#{self}#{x}\#{x})\";end;"}
String.class_eval $a+"def s;self;end"
$a<<"def s;\"(\#{self})\";end"
[Fixnum,Bignum].map{|x|x.class_eval $a}
1.upto(gets.to_i){puts eval(gets).s}
