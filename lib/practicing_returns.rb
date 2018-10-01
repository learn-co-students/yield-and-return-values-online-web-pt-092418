require 'pry'

def hello(array)
  i = 0
  collection = []
  while i < array.length
    collection << yield(array[i])
    i += 1
  end
  collection
end


hello(["Tim", "Tom", "Jim"]) { |name| "Hi, #{name}" }


# Now that we understand that calling yield(some_argument)
# will give us the return value of the execution of the
# block with that argument, we can capture those return values.
# Here we are setting a variable, collection, equal to an
# empty array. Then, inside our while loop, we push the
# return value of using yield(array[i]) into that collection array.
# Lastly, we need to return that new collection at the end of
# our method
