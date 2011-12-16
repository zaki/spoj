class Julka
  def run
    1.upto(10) do
      sum, diff = STDIN.gets.strip.to_i, STDIN.gets.strip.to_i
      k,n = julka(sum,diff)
      puts k
      puts n
    end
  end

  def julka(sum, diff)
    mid = sum/2
    if diff.even?
      [ mid + diff/2, mid - diff/2 ]
    else
      [ mid + diff/2+1, mid-diff/2 ]
    end
  end
end

#Julka.new.run
