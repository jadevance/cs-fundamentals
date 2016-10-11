class Node
  attr_accessor :value, :left, :right
  def initialize(value)
    @value = value
    @left = nil 
    @right = nil 
  end 
end 

def print_preorder(root)
  return if root == nil
  print root.value + " "
  print_preorder(root.left)
  print_preorder(root.right)
end

def print_inorder(root)
  return if root == nil
  print_preorder(root.left)
  print root.value + " "
  print_preorder(root.right)
end

def tree_height(root)
  if root == nil 
    return 0 
  end
  left = tree_height(root.left)
  right = tree_height(root.right)
  
  if left < right 
    return right += 1
  else
    return left += 1
  end 
end  

root = Node.new("8")
root.left = Node.new("3")
root.right = Node.new("10")
root.left.left = Node.new("1")
root.left.left.right = Node.new("4")
# print_tree(root)
puts tree_height(root)
print_preorder(root)
puts
print_inorder(root)