class Node
  attr_accessor :value, :next
  
  def initialize(value)
    @value = value
  end

  def to_s
    return value.to_s
  end
end

def find_index(head, value)
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
  previous = nil

  # if list is initially empty
  if current == nil
    puts "test"
    current = new_node
    current.next = nil
    return 
  end

  #if the list has only one node
  if current != nil && current.next == nil
    puts "test 2"
    current.next = new_node
    return
  end

  # if index = 0, prepend
  if index == 0 && current != nil 
    puts "test 3"
    new_node.next = current
    current = new_node
    return current
  end 

  while current != nil
    if counter == index 
      new_node.next = current 
      previous.next = new_node
      current = new_node.next
      counter += 1
    end
    previous = current
    current = current.next
    counter += 1 
  end

  # add to the tail, regardless of length of linked list 
  if index >= counter && current == nil 
    current = new_node
    current.next = nil 
  end 
end

def delete(head, index)
  counter = 0
  current = head 
  previous = current
  while current != nil
    if counter == index
      previous.next = current.next 
      counter += 1
    end
    previous = current
    current = current.next
    counter += 1 
  end
end 

def reverse(head)

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
  # Traverse through the list till you hit the "nil" at the end
  current = head
  full_list = []
  while current.next != nil
      full_list += [current.value.to_s]
      current = current.next_node
  end
  full_list += [current.value.to_s]
  puts full_list.join("->")
end


def size(head)
  current = head
  size = 0
  while !(current == nil)
      size += 1
      current = current.next
  end
  size += 1
end

first   = Node.new(1)
second  = Node.new(2)
third   = Node.new(3)
fourth  = Node.new(4)
fifth   = Node.new(5)
seventh = Node.new(7)
sixth   = Node.new(6)

first.next  = second
second.next = third
third.next  = fourth
fourth.next = fifth
fifth.next  = sixth
sixth.next = nil 

# print_item_at(first, 0)
# print_item_at(first, 2)
# print_item_at(second, 2) 
# puts find_index(first, 0) # nil
# puts find_index(first, 1) # 0 
# puts find_index(first, 2) # 1
# puts find_index(first, 3) # 2

# puts insert_at(first, seventh, 0)
# insert_at(first, seventh, 1)
# insert_at(first, sixth, 1)
# delete(first, 0)
# print_list(first)
# puts
# puts size(first)
