class Coins
  def initialize
    @store = {}
    @store[0] = 0
    @store[1] = 1
  end

  def run()
    while (i = STDIN.gets)
      puts value(i.strip.to_i)
    end
  end

  def value(i)
    return @store[i] if @store.include?(i)

    @store[i] = i > 2 ? [ i, value(i/2) + value(i/3) + value(i/4) ].max : i
    return(@store[i])
  end
end

#Coins.new.run
