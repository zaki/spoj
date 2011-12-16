class Fashion
  def run()
    c = STDIN.gets.strip.to_i
    1.upto(c) do
      n = STDIN.gets.strip.to_i
      men = STDIN.gets.strip.split(' ').map &:to_i
      women = STDIN.gets.strip.split(' ').map &:to_i
      puts one_case(men, women)
    end
  end

  def one_case(men, women)
    men.sort!
    women.sort!
    sum = 0
    men.each_with_index do |hot, index|
      sum += hot*women[index]
    end
    sum
  end
end

Fashion.new.run
