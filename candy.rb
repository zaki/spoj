class Candy
  def run()
    while ((n = STDIN.gets.strip.to_i) != -1) do
      candies = []
      1.upto(n) do
        candies << STDIN.gets.strip.to_i
      end

      puts one_case(candies)
    end
  end

  def one_case(candies)
    sum = candies.inject() {|s,x| s+=x}
    return -1 if sum % candies.length != 0
    average = sum / candies.length
    candies.select {|x| x>average }.inject(0) {|s,x| s += (x - average)}
  end
end

Candy.new.run
