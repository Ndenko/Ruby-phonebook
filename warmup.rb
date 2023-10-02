def fib(n)
  #if user passes in 0, return empty array
  if n == 0
    arr = []
    return arr
  end
  #if user passes in a number > 0 create a size n array
  arr = Array.new(n)
  #beginning with the last index, fill the array with
  #the n-1th fibonnaci in the sequence, and stop when
  #we are finished with the first index
  i = n-1
  while i != -1
    arr[i] = find_nth_term(i)
    i -= 1
  end 
  return arr
end

def find_nth_term(n)
    
  if n == 0
    return 0
  end
  if n == 1
    return 1
  end
  return find_nth_term(n-1)+find_nth_term(n-2) 
end  

def isPalindrome(n)
  input = n.to_s
  #if its even #of chars evaluate the string this particular way
  if input.length % 2 == 0
    i = 0
    j = input.length-1
    mid = (input.length/2)-1
    while i <= mid
      #compare first to last, 2nd to 2nd last etc...
      #if something doesnt match it isnt a palindrome
      if input[i] != input[j]
        return false
      end
      i += 1
      j -= 1
    end
    #if everything matched, it was
    return true
  end
  #if its odd #of chars evaluate the string this particular way
  if input.length % 2 == 1
    i = 0
    j = input.length-1
    while i < input.length-1
      #if they dont match it cant be a palindrome
      if input[i] != input[j]
        return false
      end
      #however if we've arrived at the middle without a false, must be one
      if i = j
        return true
      end
      i += 1
      j -= 1

    end
  end
  #in the case of 1 char words/numbers, never iterate, return true
  return true  
end

def nthmax(n, a)
  if n > a.length
    return nil
  end

  i = 0
  j = 0
  k = 0

  max_index = 0
  max = a[i]
  
  while i < n
    j = 0
    #find the max and its index
    while j < a.length
      if max < a[j]
        max = a[j]
        max_index = j
      end
      j += 1
    end
    #get rid of it
    a[max_index] = -1
    max = a[max_index]
  i += 1
  end

  remaining_max = a[k]
  print a
  #find the remaining max
  while k < a.length
    if remaining_max < a[k]
      remaining_max = a[k]
    end
    k += 1
  end

  return remaining_max

end

def freq(s)
  if s == ""
    return ""
  end
  h = Hash.new
  h.default = 0
  i = 0

  while i < s.length
    h[s[i]] += 1
    i += 1
  end
  #find the max value, and return the key that it belongs to
  return h.key(h.values.max)
end

def zipHash(arr1, arr2)

  #if the lengths dont match, its invalid
  if arr1.length != arr2.length
    return nil
  end

  i = 0

  h = Hash.new
  while i < arr1.length
    h[arr1[i]] = arr2[i]
    i += 1
  end

  return h

end

def hashToArray(hash)
  
  row = 0
  col = 0
  #give the 2D array hash entry number of columns
  arr = Array.new(hash.length()) {Array.new(2)}
  while row < hash.length()
    
    arr[row][0] = hash.keys[row]
    arr[row][1] = hash[hash.keys[row]] 
  
    row += 1
  end
  return arr
end


#print fib(0)
#print fib(1)
#print fib(2)
#print fib(3)
#print fib(10)

#puts isPalindrome(1)
#puts isPalindrome(1001)
#puts isPalindrome(216612)
#puts isPalindrome(10001)
#puts isPalindrome("Mem")
#puts isPalindrome("MEM")
#puts isPalindrome(21612)
#puts 
#puts isPalindrome("hey")
#puts isPalindrome("1010")


#puts nthmax(0, [1,2,3,0])
#puts nthmax(1, [3,2,1,0])
#puts nthmax(2, [7,3,4,5])
#puts nthmax(5, [1,2,3])

#puts freq("") 
#puts freq("aaabb") 
#puts freq("bbaaa") 
#puts freq("ssabcd") 
#puts freq("a12xxxxxyyyxyxyxy")

#puts zipHash([], []) 
#puts zipHash([1], [2])
#puts zipHash([1, 5], [2, 4])
#puts zipHash([1], [2, 3]) 
#puts zipHash(["Mamat", "Hicks", "Vinnie"], ["prof", "prof", "TA"])

#print hashToArray({}) 
#puts
#print hashToArray({"a" => "b"})
#puts
#print hashToArray({"a" => "b", 1 => 2}) 
#puts
#print hashToArray({"x" => "v", "y" => "w", "z" => "u"})
#puts
