def jump(nums)
    $count = 0
    return 0 if nums.length == 1
    check(nums,steps=nums[0],position=0,count=0)
    $count
  end
  
  def check(nums,steps,position,count)
    if nums[position] + position >= nums.length-1
      count+=1 
      $count = count
      return nil
    end
    if steps-1 >= nums[position+1]
      count+=1 if steps-1 == 0
       check(nums,steps-1,position+1,count)
    end
    if steps == 0
      steps = nums[position]
      check(nums,steps,position,count)
    end
    if steps-1 < nums[position+1]
      count+=1
      arr = nums[position+1...position+steps+1]
      k = position+1
      max = [arr[0],k]
      while k <= arr.length+position
         if nums[k] + k >= nums.length-1
          count+=1
          $count = count
          return nil
         end
         max = [nums[k],k] if nums[k]+k >= max.sum
        k+=1
      end
      steps = max[0]
      position = max[1]
      check(nums,steps,position,count)
    end
  end
  
  arr = [7,0,9,6,9,6,1,7,9,0,1,2,9,0,3]
  arr2 = [2,3,1,1,4]
  arr3 = [1,1,1,1]
  arr4 = [1,2]
  arr5 = [2,1,1,4]
  arr6 = [1,3,3,1,2,4]
  arr7 = [5,4,0,1,3,6,8,0,9,4,9,1,8,7,4,8]
  arr8 = [5,9,3,2,1,0,2,3,3,1,0,0]
  arr9 = [2,3,5,9,0,9,7,2,7,9,1,7,4,6,2,1,0,0,1,4,9,0,6,3]
  jump(arr8)