# Declare a Node class with (single linked list)
class Node 
  def initialize(item)
    @item = item
    @next = nil
  end

  attr_accessor(:item)
  attr_accessor(:next)
end

# Create a class, so push and pop methods
class Stack
  def initialize()
    @size = 0
    @head = nil
  end

  def push(item)
    node = Node.new(item)

    # If we don't have nodes in it, just set head
    if size == 0
      @head = node
    else
      temp_head = @head
      @head = node
      node.next = temp_head
    end

    # increment the size
    @size += 1

    # If we pass back self, can chain push calls
    self
  end

  def pop()
    # If size is 0, return nothing
    if size == 0
      return nil
    # Otherwise, we grab head and point head to his next
    else
      node = @head
      @head = node.next

      # Decrement size
      @size -= 1
    end

    node.item
  end

  attr_reader(:size)
  attr_reader(:head)
end


# Testing
node = Node.new("test")
new_node = Node.new("test2")
puts "node item: #{node.item}"

stack = Stack.new()
puts "stack size: #{stack.size}"
stack.push(node).push(new_node)
puts "stack size: #{stack.size}"
puts "stack head: #{stack.head}"
puts "stack head.item: #{stack.head.item}"
pop_node = stack.pop()
puts "pop_node: #{pop_node}"
puts "stack size: #{stack.size}"
puts "stack head: #{stack.head}"
