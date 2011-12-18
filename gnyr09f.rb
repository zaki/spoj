class Gnyr09f

#    0  1  2 3 4 = k
# 0  1  0  0 0 0
# 1  2  0  0 0 0
# 2  3  1  0 0 0
# 3  5  2  1 0 0
# 4  8  5  2 1 0
# 5 13 10  6 2 1

# [n][0] = [n-1][0] + [n-2][0]
# [n][i] = [n-1][i] + [n-2][i] + ([n-1][i-1] - [n-2][i-1])
#          0|**i**    10|**i**    11|**i-1**
  def initialize
    @store = []
    0.upto(100) {|i| @store[i] = [0]*101 }
    # initialize
    @store[1][0] = 2
    @store[2][0] = 3
    @store[2][1] = 1
    @store[3][0] = 5
    @store[3][1] = 2
    @store[3][2] = 1
    4.upto(100) do |n|
      0.upto(100) do |j|
        @store[n][j] = @store[n-1][j]+@store[n-2][j]
        if (j != 0)
          @store[n][j] += (@store[n-1][j-1] - @store[n-2][j-1])
        end
      end
    end
  end
  def run()

    cases = STDIN.gets.to_i
    1.upto(cases) do
      c, n, k = STDIN.gets.strip.split(' ').map &:to_i
      puts "#{c} #{one_case(n,k)}"
    end
  end

  def one_case(n,k)
    @store[n][k]
  end
end


#Gnyr09f.new.run
