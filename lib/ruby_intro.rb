# When done, submit this entire file to the autograder.

# Part 1

def sum arr=[]
  sum = 0
  if arr.empty? then return 0 
  else arr.each { |item| 
    if !item.is_a? Integer then return false 
    else sum += item 
    end } 
  end
  return sum
end

def max_2_sum arr
   largest = arr[0]
   index = 0
   if arr.empty? then return 0 
   elsif arr.length == 1 then return largest
   else arr[1..-1].each { |item|
     if item > largest then 
       largest = item
       index = arr.index(largest)
     end }
     sum = largest
     arr.delete_at(index)
     largest = arr[0]
     arr[1..-1].each { |item|
     if item > largest then largest = item
     end }
     sum += largest
   end
   return sum
end

def sum_to_n? arr, n
    if !n.is_a? Integer or !n.is_a? Integer or arr.empty? or arr.length == 1 then return false end
    for i in 0..arr.length-2
        if !arr[i].is_a? Integer then return false
        else for t in i+1..arr.length-1
                if arr[i] + arr[t] == n then return true end
             end
        end
    end
    return false
end

# print(sum_to_n?([1,3,4], 5))

# Part 2

def hello(name)
  # YOUR CODE HERE
end

def starts_with_consonant? s
  # YOUR CODE HERE
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
end

# Part 3

class BookInStock
# YOUR CODE HERE
end
