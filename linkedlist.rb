class LinkedList
attr_accessor :name

def initialize
  @head=nil
  @tail=nil
end

def prepend(data)
  if @head.nil?
    @head=Node.new(data)
    @tail=@head
  else
    temp=@head
    @head=Node.new(data, temp)
  end
end

def append(data)
  if @head.nil?
    @head=Node.new(data)
    @tail=@head 
  else
    if @head.next_node.nil?
      @tail=Node.new(data)
      @head.next_node=@tail
    else 
      temp=@tail
      @tail=Node.new(data)
      temp.next_node=@tail
    end
  end
end

def head
@head.data
end

def tail
@tail.data
end

def size
  temp=@head
  counter=1
  while (temp.next_node!=nil)
    temp=temp.next_node
    counter+=1
  end
  counter
end

def at(index)
  i=0
  temp=@head
  while (i!=index && temp!=nil)
    temp=temp.next_node
    i+=1
  end
  return temp.data
end

def pop
 temp=@head
  while (temp.next_node.next_node!=nil)
    temp=temp.next_node
  end
  temp.next_node=nil
  @tail=temp
end

def contains?(value)
  temp=@head
  value_found=false
  while (temp!=nil)
    if temp.data==value
      value_found=true
    end
    temp=temp.next_node
  end
  value_found
end

def find(data)
  temp=@head
  node_index=0
  while (temp.data!=data && temp!=nil)
    temp=temp.next_node
    node_index+=1
  end
  node_index
end

def to_s
#format: ( data ) -> ( data ) -> ( data ) -> nil
temp=@head
str="(#{@head.data})->"
while (temp.next_node!=nil)
  temp=temp.next_node
  str+="(#{temp.data})->"
end
  str+="nil"
  puts str
end

class Node
attr_accessor :next_node, :data
def initialize(data=nil, next_node=nil)
  @data=data
  @next_node=next_node 
end

end

list=LinkedList.new
list.append("a")
list.append("b")
list.append("c")
list