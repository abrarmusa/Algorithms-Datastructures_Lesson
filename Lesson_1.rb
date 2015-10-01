# ALGORITHMS AND DATA STRUCTURES

# ===============================================
# TIME COMPLEXITY

# O(1) - Constant Time

def first_element_is_red?(array)
 for i in 0..5
  array[0] =='red' ? true : false  #O(1)
 end
end


array = [1,2,3,4,5,6]



# O(n) - Linear Time

def contains?(array, value)
  array.each do |item| 
    return true if item == value # O(n)
  end
  false    # O(1)
end

# O(n) + O(1)
# n


def forlooper(num)
  for i in 0..num
     puts "Value of local variable is #{i}" #O(n)
  end
end


# O(n^2) - Quadratic Time

def duplicates?(array1)
  array1.each_with_index do |item1, index1| # O(n^2)
    array1.each_with_index do |item2, index2| 
      next if index1 == index2
      return true if item1 == item2
    end
  end
  false
end

def forlooper(num)
  for i in 0..num
   for j in 0..num
      puts "Value of local variable is #{i} #{j}"
    end
  end
end



# O(log n) - Logarithmic Time

def binary_search(array, value, from=0, to=nil)
    to = array.count - 1 unless to   # O(1)
    mid = (from + to) / 2  # O(1)

    if value < array[mid] # O(1)
        return binary_search(array, value, from, mid - 1) #
    elsif value > array[mid] # O(1)
        return binary_search(array, value, mid + 1, to) # 
    else  
        return mid # O(1)
    end
end 

# ===============================================
# ARRAYS

# Access - O(1)
# Search - O(n)
# Insertion - O(n)
# Deletion - O(n)


array = Array.new(256){ |i| false }
"a".ord

IMPLEMENT A FUNCTION TO DETERMINE IF A STRING HAS ALL UNIQUE CHARACTERS

FOR EXAMPLE "ahedla" should return false


def unique(string)
  if string.length < 2 || string == nil
    return true
  end
  numchars = 256
  array = new Array.new(numchars){|i| false}
  counter = 0

  for i in 0..(string.length - 1)
    if array[(string[i].ord)] == true
      return false
    end
    array[(string[i].ord)] = true
  end
  return true

end

# ===============================================
# QUEUES - First In First Out

# http://ruby-doc.org/core-2.2.0/Queue.html
# Insertion - O(1)
# Deletion - O(1)


# ===============================================
# STACKS - Last In First Out

# [   ]
# [   ]
# [   ]
# [   ]
# [   ]
# [   ]
# [   ]
# [   ]

class Stack
  def initialize(size)
    @size = size
    @store = Array.new(@size)
    @top = -1
  end
  
  def pop
    if empty?
      nil
    else
      popped = @store[@top]
      @store[@top] = nil
      @top = @top.pred
      popped
    end
  end
  
  def push(element)
    if full? or element.nil?
      nil
    else
      @top = @top.succ
      @store[@top] = element
      self
    end
  end
  
  def size
    @size
  end
  
  def look
    @store[@top]
  end
  
  private
  
  def full?
    @top == (@size - 1)
  end
  
  def empty?
    @top == -1
  end
end

# ===============================================
# LINKED LISTS


# -----------------------------------------------
# Singly Linked List

# []->[]->[]->[]->[]->[]->[]

# Access - O(n)
# Search - O(n)
# Insertion - O(1)
# Deletion - O(1)

# -----------------------------------------------
# Doubly Linked List
# []<-->[]<-->[]<-->[]<-->[]<-->[]<-->[]

# Access - O(n)
# Search - O(n)
# Insertion - O(1)
# Deletion - O(1)

# ===============================================
# BINARY TREES
# ===============================================
# BINARY SEARCH TREES
# ===============================================
# AVL TREES
# ===============================================
# B-TREES
# ===============================================
# RECURSION AND DYNAMIC PROGRAMMING
# ===============================================
# GRAPHS
# ===============================================