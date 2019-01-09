class Node
  #your node code here
  attr_accessor :next
  attr_accessor :number

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

  def insert(index, item)
    temp = @head
    if index == 0
      temp.number = item
    else
      count = 1
      while count <= index
        if temp = temp.next
          val = temp
        else
          return false
        end
        count += 1
      end
      val.number = item
      val
    end
  end

  def remove(index)
    temp = @head
    if index == 0
      @head = @head.next
    else
      count = 1
      while count <= index
        if temp = temp.next
          temp = temp
        else
          return false
        end
        count += 1
      end
      before_current(index).next = temp.next
    end
  end
  
  def before_current(index)
    #your code here
    temp = @head
    index = index - 1
    return if index < 0
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
p c.add(9)
p c.add(8)
# p c.before_current(1)
c.remove(4)
# p c.add(8)
p c.get(0)
# p c.insert(0, 8)
# p c.get(0)
