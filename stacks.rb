class Node
  attr_accessor :data, :next

  def initialize(data)
    @data = data
    @next = nil
  end

  def to_s
    "#{data}"
  end
end

class Stack
  def pushh(data)
    if @top
      top.next = Node.new(data)
    else
      @top = Node.new(data)
    end
  end

  def top
    temp = @top
    return temp if !temp.next
    return temp if !temp.next while temp = temp.next
  end

  def before_top(data)
    
  end

  def popp(data)
    if @top
      
    else
      return false
    end
  end
end

s = Stack.new
p s.pushh(5)
p s.pushh(4)
p s.pushh(3)
