# The is_spicy_batch method is already defined for you and will be called when running tests.
# @param {Integer} batch
# @return {boolean} whether the batch is spicy

#first_spicy_batch recognizes 1st batch that is spicy in array of batches
# if batch 



# end
# batches = [1,2,3,4,n]
#if 3 is the first spicy batch, return the batch = 3

# def first_spicy_batch(n)
#   #start at index 0
#   start = 0
#   last = n

#   while start < n
#     puts is_spicy_batch(start + 1)
#   end

# end

def first_spicy_batch(n)
  # assign left to be the first batch and right to be the last (n)th batch
  left = 0
  right = n

  # our batches are sorted, so all the spicy batches will be at the end of the list
  # and all non-spicy batches will be at the beginning.
  # loop through values in the list the value of left is no longer less than the value of right
  while left < right
    # start our search in the middle of the list
    mid = left + (right - left) / 2

    # run our helper method and check if the middle batch is spicy
    if is_spicy_batch(mid)
      # if the middle batch is spicy, we reassign right to be the value
      # of mid (since we know all batches to the right of mid are spicy)
      right = mid
    else
      # otherwise, we assign left to be the value of mid + 1, because
      # we already know that mid is not spicy
      left = mid + 1
    end
  end

  # return left, which will be the first spicy batch!
  left
end




