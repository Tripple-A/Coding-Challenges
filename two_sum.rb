#Using a hash
def two_sum(nums, target)
    my_hash = Hash.new
    nums.each_with_index do  |num,index|
        my_hash[num] = index
    end
    for i in 0...nums.length
        diff = target - nums[i]
        if my_hash.has_key?(diff) && i != my_hash[diff]
            return [i,my_hash[diff]] 
        end
    end
    
end

# Using brute force in javascript
var twoSum = function(nums, target) {
    arr=[]
      nums.forEach((num,index) => {
        i = index+ 1
        while ( i < nums.length){
          if(num + nums[i] == target){
            arr.push(index,i)
              break
          }
          i++
        } 
      });
        return arr
    };
