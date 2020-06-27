arr = [
  [1,2,3,4,5],
  [6,7,8,9,10],
  [11,12,13,14,15],
  [16,17,18,19,20],
  [21,22,23,24,25],
]

def spiral(arr)
  $path = []
  i = 0
  j = 0
  len = arr.length * arr[0].length
  while $path.length < len
    j = right(arr,i,j)
    i = down(arr,i+1,j)
    j = left(arr,i,j-1)
    i = up(arr,i-1,j)
    j+=1
  end
  $path
end

def right(arr,i,j)
  return j-1 if j == arr[0].length || $path.include?(arr[i][j])
    $path << arr[i][j]
    p $path
    right(arr,i,j+1)
end
def down(arr,i,j)
  return i-1 if i == arr.length || $path.include?(arr[i][j])
    $path << arr[i][j]
    p $path
    down(arr,i+1,j)
end
def left(arr,i,j)

  return j+1 if $path.include?(arr[i][j]) || j < 0 
    $path << arr[i][j]
    p $path
    left(arr,i,j-1)
end
def up(arr,i,j)
  return i+1 if i >= 0 && $path.include?(arr[i][j])
    $path << arr[i][j]
    p $path
    up(arr,i-1,j)
end

p spiral([[1],[2]])