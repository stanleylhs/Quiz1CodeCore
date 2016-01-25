class Stack
  # attr_accessor :array
  def initialize()
    @array = []
  end
  def add(elem)
    @array << elem
  end

  def remove
    @array.pop
  end
end

class Queue
  def initialize()
    @array = []
  end
  def add(elem)
    @array << elem
  end

  def remove
    @array.shift
  end
end

stack = Stack.new()
stack.add(1)
stack.add(2)
stack.add(3)

p stack
p stack.remove
p stack

queue = Queue.new()
queue.add(1)
queue.add(2)
queue.add(3)
p queue
p queue.remove
p queue