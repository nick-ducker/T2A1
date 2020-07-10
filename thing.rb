arr = Array[1,45,10,80,35,35,35,100,13,147,13,500,80]

# def selection_sort(array)
#   # First we create a variable to store which position we are swapping
#   sorting_position = 0

#   # We create a loop that runs as many times as the size of the array in order to swap every element
#   array.size.times do
    
#     # We set the current minimum to the position we're sorting from
#     current_minimum = sorting_position
#     # We set the current item to the position one ahead of of the current minimum
#     current_item = sorting_position + 1

#     # We nest a loop to iterate through the unsorted part of our array 
#     (array.size - (sorting_position + 1)).times do
  
#       # We compare our current minimum with our current item
#       if array[current_minimum] > array[current_item]
#         #If the current minimum is larger than the current item, we set the position var to the current item position var
#         current_minimum = current_item
#         #We then increment the current item position var by one
#         current_item += 1
#       else 
#         #if the current minimum is smaller than the current item, we increment the current item position var by one
#         current_item += 1       
#       end
#     end

#     # We then swap the position of the value at the sorting position with the value at the current minimum position 
#     sorting_position_value = array[sorting_position]
#     array[sorting_position] = array[current_minimum]
#     array[current_minimum] = sorting_position_value

#     # We then increment our sorting position by one to create our sorted partition of the array
#     sorting_position += 1

#     #The loop then continues until is has sorted all the elements into the sorted partition
#   end

#   return array
# end
#First we create an array to sort
arr = Array[1,45,10,80,35,35,35,100,13,147,13,500,80]
#We then define the range for the array
range = 500


def counting_sort(arr,range)
  #We generate a hash with with keys that correspond to every number within the arrays predetermined range, all pointing to zero.
  setup = *(1..range)
  count = Hash[setup.collect { |value| [value, 0] }]
  #We then generate a new array to push our counted hash into later
  finalarr = Array.new

  #We iterate through the array and increment the count on the hash where there is a matching key
  arr.each do |element|
    count[element] += 1
  end

  #We then iterate through the hash and look for keys with values more than zero 
  count.each do |key, value|
    if value > 0
      #if a key has a value more than zero, we push that key to the new array as many times as the value states.
      value.times do
        finalarr << key
      end
      
    else
      #Otherwise, we move onto the next key
      next
    end
  end

  return finalarr
end

counting_sort(arr,range)

