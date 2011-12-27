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
  attr_accessor :type, :index

  def initialize(type, index)
    @type, @index = type,index
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

    events = {}
    rects.each_with_index do |r, i|
      events[r.x1] ||= []
      events[r.x2] ||= []
      events[r.x1] << Event.new(:in,  i)
      events[r.x2] << Event.new(:out, i)
    end

    area = 0
    active = []
    x = 0
    events.keys.sort.each do |event_x|
      dirty = false
      x_now = event_x
      unless active.empty?
        area += get_area(active, x, x_now)
      end
      events[event_x].each do |event|
        rect  = rects[event.index]

        if (event.type == :in)
          active << rect
          dirty = true
        else
          active.delete(rect)
        end
      end
      active.sort! if dirty
      x = x_now
    end

    puts area

  end

  def get_area(active, x1, x2)
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
