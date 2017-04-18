class LinkedList
attr_accessor :name

def initialize
  @head=nil
  @tail=nil
end

def prepend(data)
  if @head.nil?
    #means its empty
    @head=Node.new(data)
    @tail=data
    @tail=Node.new(data, nil)
  else
    #set new node's next to the current head
    temp=@head.value
    @head=Node.new(data, temp)
  end
end

def append(data)
  if @tail.nil?
    #means tails is empty
    @tail=data
    @head=data
  else
    #set the next node of the tail to nil
    data.next_node(nil)
    @tail=data
  end
end

def head
@head.value
end

def tail
@tail.value
end

def size
  temp=@head
  counter=0
  while (temp!=nil)
    counter+=1
    temp=temp.next
    
  end
  counter
end

end


class Node
attr_accessor :next, :data
def initialize(data=nil, nex=nil)
  @data=data
  @next=nex  
end

def set_value(val)
  @data=val
end

def next_node(nextnode)
  @next=nextnode
end

def value
  @data
end
def next
  @next
end

end

list=LinkedList.new 
list.prepend("c")
list.prepend("b")