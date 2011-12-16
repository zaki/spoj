class Fctrl2
  def initialize
    @facts = {}
  end
  def run()
    n = STDIN.gets.to_i
    1.upto(n) do
      puts factorial(STDIN.gets.strip.to_i)
    end
  end

  def factorial(num)
    fact(num)
  end

  def fact(num)
    return 1 if num == 1
    return @facts[num] if @facts[num]
    @facts[num] = num * fact(num-1)
  end
end

#Fctrl2.new.run
