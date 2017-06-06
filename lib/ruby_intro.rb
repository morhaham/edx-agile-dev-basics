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
    if name.is_a? String
        return "Hello, "+name
    end
end

def starts_with_consonant? s
  if !s.is_a? String or s =~ /^[aeiou].*|[!@#$%^&*()_+0-9]+.*|^$$/i then
    return false
  else
    return true
  end
end

# print starts_with_consonant? '$bbb'

def binary_multiple_of_4? s
  if !s.is_a? String or s =~ /[a-z2-9!@#$%^&*()_+]+.*|^$/i then
    return false
  elsif s.to_i(2) % 4 == 0 then
    return true
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
end

