def length_of_lis(nums)
    min = nums.max + 1
    $count = 1
    nums.each_with_index do |num,index|
      if num < min && num != nums[index...nums.length].max
         min = num if num < min
        check(nums,num,index)
      end
    end
    p $count
  end
  
  def check(nums,num,index,arr=[num],undone=[])
     for i in index...nums.length
      arr << nums[i] if nums[i] > arr.last
      undone << i if nums[i] > num && nums[i] < arr.last
     end
     $count = arr.length if arr.length > $count
     return nil if undone.empty?
     index = undone[0]
     temp = nums[index]  
     while arr.max > temp
      arr.pop()
     end
     check(nums,num,index,arr,undone=[])
  end
      
      
  
  length_of_lis([10,9,2,5,3,7,101,18])