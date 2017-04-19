A linked list made as part of The Odin Project. A linked list is a collection of data elements or nodes that point to the next node. 

The Node class defines the individual nodes.

The LinkedList class defines several methods for interacting with the list and nodes themselves:

#append adds a new node to the end of the list

#prepend adds a new node to the start of the list

#size returns the total number of nodes in the list

#head returns the first node in the list

#tail returns the last node in the list

#at(index) returns the node at the given index

#pop removes the last element from the list

#contains? returns true if the passed in value is in the list and otherwise returns false.

#find(data) returns the index of the node containing data, or nil if not found.

#to_s represent the LinkedList objects as strings, so you can print them out and preview them in the console. The format is: ( data ) -> ( data ) -> ( data ) -> nil

#insert_at(index, data) inserts the data at the given index

#remove_at(index) removes the node at the given index.