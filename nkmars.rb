class Rect
  attr_accessor :x1,:x2,:y1,:y2
  def initialize(x1,y1,x2,y2)
    @x1,@y1,@x2,@y2 = x1,y1,x2,y2
  end

  def <=>(other)
    @y1 <=> other.y1
  end
end

class Event
  attr_accessor :type, :x, :index

  def initialize(type, x, index)
    @type, @x, @index = type, x, index
  end

  def <=>(other)
    @x <=> other.x
  end
end

class Nkmars
  def run
    n = STDIN.gets.strip.to_i

    rects = []
    1.upto(n) do
      x1, y1, x2, y2 = STDIN.gets.strip.split(' ').map &:to_i
      rects << Rect.new(x1,y1,x2,y2)
    end

    events = []
    rects.each_with_index do |r, i|
      events << Event.new(:in,  r.x1, i)
      events << Event.new(:out, r.x2, i)
    end

    area = 0
    active = []
    x = 0
    events.sort.each do |event|
      rect  = rects[event.index]
      x_now = event.type == :in ? rect.x1 : rect.x2

      unless active.empty?
        area += get_area(active, x, x_now)
      end

      if (event.type == :in)
        active << rect
      else
        active.delete(rect)
      end
      x = x_now
    end

    puts area

  end

  def get_area(active, x1, x2)
    active.sort!
    total_length = 0
    last_y = active[0].y1
    active.each do |rect|
      last_y = rect.y1 if (rect.y1 > last_y)
      total_length += (rect.y2 - last_y)
      last_y = rect.y2
    end
    return(total_length*(x2-x1))
  end
end

#Nkmars.new.run
