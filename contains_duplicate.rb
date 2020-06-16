def contains_duplicate(nums)
    my_hash = Hash.new
    for i in 0..nums.length
       return true if my_hash.has_key?(nums[i]) 
        my_hash[nums[i]] = 1
    end
    return false
end