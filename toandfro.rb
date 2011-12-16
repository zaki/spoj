class Toandfro
  def run
    while (cols = STDIN.gets.strip.to_i) != 0 do
      puts toandfro(cols, STDIN.gets.strip)
    end
  end

  def toandfro(cols, str)
    rows = str.length / cols - 1
    output = ''

    0.upto(cols-1) do |col|
      0.upto(rows) do |row|
        puts output
        index = row.even? ? row*cols + col : (row+1)*cols - col - 1
        output << str[ index ]
      end
    end
    output
  end
end

#Toandfro.new.run
