class Gny07a
  def run()
    n = STDIN.gets.to_i
    1.upto(n) do |c|
      i, str = STDIN.gets.strip.split(' ')
      i = i.to_i
      puts "#{c} " + one_case(i, str)
    end
  end

  def one_case(i, str)
    str.slice!(i-1)
    str
  end
end

Gny07a.new.run
