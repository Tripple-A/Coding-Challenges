x = [
[1,1,1,1],
[0,1,1,0],
[0,1,0,1],
[0,1,9,1],
[1,1,1,1]
]

$ans = []
def short(mat,i=0,j=0,path=[])
  return nil if i >= mat.length || j >= mat[0].length
  return nil if i < 0 || j < 0
  return nil if mat[i][j] == 0
  return nil if path.include?([i,j])
  path << [i,j]
  if mat[i][j] == 9
    $ans << path
    return nil
  end
  short(mat,i+1,j,path.dup)
  short(mat,i,j+1,path.dup)
  short(mat,i,j-1,path.dup)
  short(mat,i-1,j,path.dup)
  $ans.sort!{|a, b| a.length <=> b.length} [0]
end

p short(x)


