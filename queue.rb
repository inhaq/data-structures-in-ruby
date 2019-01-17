class Node
	attr_accessor :next, :data
	def initialize data
		@data = data
		@next = nil
	end
	
	def to_s
		"#{data}"
	end
end

class Queue
	
	def initialize
		@head = nil
		@tail = nil
	end
	
	def enqueue data
		if @head
			temp = Node.new(data)
			@tail.next = temp
			@tail = temp
		else
			@head = Node.new(data)
			@tail = @head
		end
	end
	
	def dequeue
		if @head == @tail
			@head = nil
			@tail = nil
		elsif
			temp = @head
			@head = nil
			@head = temp.next
			return "#{@head}"
		else
			@head == nil
			return "#{-1}"
		end
	end
end