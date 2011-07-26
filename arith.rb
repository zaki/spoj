class Arith
  def arith(str)
    str =~ /(\d+)([-+*])(\d+)/
    arg1, op, arg2 = $1, $2, $3
    meta(arg1, arg2, op.to_sym)
  end

  def pad(str, left=0, right=0)
    ' '*left + str + ' '*right
  end

  def mul(arg1, arg2, len, len2)
    out = ''
    shift = 0
    arg2.reverse.each_char do |c|
      part = (arg1.to_i * (c.to_i)).to_s
      out << pad(part, len - part.length - shift) + "\n"
      shift += 1
    end
    line = '-'*len2
    out << pad(line, len - len2) + "\n"
    out
  end

  def meta(arg1, arg2, op)
    res = (arg1.to_i.send(op, arg2.to_i)).to_s
    len = [arg1.length, arg2.length + 1, (op == :* ? 0 : res.length)].max
    len2 = [arg1.length, arg2.length + 1, res.length].max
    len4 = [arg1.length, arg2.length, res.length].max

    len3 = len if op == :+
    len3 = [arg2.length+1, res.length].max if op == :-
    len3 = [arg2.length+1, (arg1.to_i * (arg2.to_i % 10)).to_s.length].max if op == :*

    out = ''
    out << pad(arg1, len2 - arg1.length) + "\n"
    out << pad("#{op.to_s}" + arg2, len2 - arg2.length - 1) + "\n"
    out << pad('-'*len3, len2 - len3) + "\n"

    out << mul(arg1, arg2, len2, len4) if op == :* && arg2.length > 1

    out << pad(res, len2 - res.length) + "\n"
    out
  end

  def run
   n = STDIN.gets.to_i
   1.upto(n) do
      puts arith(STDIN.gets)
      puts ""
   end
  end
end

# Arith.new.run
