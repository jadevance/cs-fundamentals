class Node
  attr_accessor :value, :next
  
  def initialize(value)
    @value = value
  end

  def to_s
    return value.to_s
  end
end

def find_value(head, value)
  # return index or nil if not found
  index = 0
  current = head  
  while current != nil 
    if current.value == value
      return index
    end   
    current = current.next
    index += 1 
  end
  return nil
end

def insert_at(head, new_node, index)
  # insert new_node into list at specified index
  counter = 0
  current = head 
  previous = current
  while current != nil
    if counter == index
      new_node.next = current # 3
      previous.next = new_node # 7
      current = new_node.next # 3
      counter += 1
    end
    previous = current
    current = current.next
    counter += 1 
  end
end

def print_list(head)
  while head != nil 
    if head.next == nil 
      print head.value.to_s
    else
      print head.value.to_s + " -> "
    end
    head = head.next
  end
end

def print_item_at(head, index)
  counter = 0 
  while head != nil 
    if counter == index
      return puts head
    end 
    head = head.next
    counter += 1
  end
end

first = Node.new(1)
second = Node.new(2)
third = Node.new(3)
fourth = Node.new(4)
fifth = Node.new(5)
seventh = Node.new(7)

first.next = second
second.next = third
third.next = fourth
fourth.next = fifth
fifth.next = nil 

# print_item_at(first, 0)
# print_item_at(first, 2)
# print_item_at(second, 2) 
# puts find_value(first, 0) # nil
# puts find_value(first, 1) # 0 
# puts find_value(first, 2) # 1
# puts find_value(first, 3) # 2

insert_at(first, seventh, 2)
print_list(first)