def my_find(collection)
  i = 0 
  while i < collection.length   
    if yield(collection[i])
        return collection[i] 
    end 
    i += 1 
  end 
end

#or return collection[i] if yield(collection[i])


collection = (1..100).to_a 
my_find(collection) {|i|  i % 3 == 0 and i % 5 == 0 }
