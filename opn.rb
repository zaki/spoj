class Opn
  def run
    t = STDIN.gets.to_i
    1.upto(t) do
      puts rpn(STDIN.gets)
    end
  end

  def rpn(str)
    stack = []
    out = ''

    str.each_char do |c|
      case c
      when '('
        stack << c
      when ')'
        while stack.length > 0 && (s = stack.pop) != '('
          if s != '('
            out << s
          end
        end
      when /[a-z]/
        out << c
      else
        stack << c
      end
    end
    while stack.length > 0
      s = stack.pop
      out << s
    end
    out
  end
end

# Opn.new.run
