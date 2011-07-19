class Palin
  def run()
    n = STDIN.gets.to_i
    1.upto(n) do
      puts one_case(STDIN.gets.strip)
    end
  end

  def next_palindrome(str)
    ret = ''
    mid = str.length / 2
    return '1' + '0'*(str.length-1) + '1' if str =~ /^9+$/
    if str.length == 1
      str.next!
      str = '11' if str == '10'
      return str
    end

    # no middle
    if (str.length % 2 == 0)
      fhalf, shalf = str[0..mid-1], str[mid..-1]
      middl = ''
    # with middle
    else
      fhalf, middl, shalf = str[0..mid - 1], str[mid], str[mid+1..-1]
    end

    if fhalf.to_s == shalf.to_s.reverse
      if middl != ''
        middl.next!
        fhalf, middl = fhalf.next!, '0' if middl == '10'
      else
        if fhalf > shalf.reverse
        else
          if middl != ''
            middl.next!
            fhalf, middl = fhalf.next!, '0' if middl == '10'
          else
            fhalf.next!
          end
       end
      end
    else
      if fhalf > shalf
      else
        if middl != ''
          middl.next!
          fhalf, middl = fhalf.next!, '0' if middl == '10'
        else
          fhalf.next!
        end
      end
    end
    ret = fhalf + middl + fhalf.reverse
  end

  def one_case(str)
    next_palindrome(str)
  end
end

#Palin.new.run
