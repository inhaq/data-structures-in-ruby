class Node
  #your node code here
  attr_accessor :next
  attr_reader :number

  def initialize(number)
    @number = number
    @next = nil
  end
end

class LinkedList
  #setup head and tail

  def add(number)
    #your code here
    if @head
      tail.next = Node.new(number)
    else
      @head = Node.new(number)
    end
  end

  def tail
    temp = @head
    return temp if !temp.next
    return temp if !temp.next while temp = temp.next
  end

  def get(index)
    #your code here
    temp = @head
    return temp if index == 0
    count = 1
    while count <= index
        if temp = temp.next
            val = temp
        else
            return false
        end
        count += 1
    end
    val
  end
end

c = LinkedList.new
p c.add(5)
p c.add(6)
p c.add(7)
p c.add(8)
p c.get(0)
