class Node
  #your node code here
  attr_accessor :next
  attr_accessor :number

  def initialize(number)
    @number = number
    @next = nil
  end

  def to_s
    "#{number}"
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
    if index == 0
      temp.next = nil
      return temp
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
    end
     val.next = nil
    val
  end

  def insert(index, item)
    temp = @head
    val = @head
    if index == 0
      val.number = item
      val.next = @head
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

  def before_current(index)
    #your code here
    temp = @head
    index = index - 1
    return false if index < 0
    if index == 0
        temp.next = nil
        return temp 
    end
    count = 1
    while count <= index
      if temp = temp.next
        val = temp
      else
        return false
      end
      count += 1
    end
    val.next = nil
    val
  end

  def remove(index)
    temp = @head
    if index == 0
      val = temp.number
      @head = @head.next
    else
      count = 1
      while count <= index
        if temp = temp.next
          temp = temp
          val = temp.number
        else
          return false
        end
        count += 1
      end
      last = before_current(index)
      temp = nil if temp.number.next == nil
      last.next = temp.next if temp
    end
    val
  end
end

c = LinkedList.new
p c.add(5)
p c.add(6)
p c.add(7)
p c.add(8)
p c.add(9)
# p c.before_current(5)         working
# p c.remove(0)                 working
# p c.get(4)                    working
p c.insert(0, 8)
p c
# p c.get(0)
