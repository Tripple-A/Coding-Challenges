def is_valid(s)
   my_hash = {
       '{'=> '}',
       '[' => ']',
       '(' => ')'
   } 
    arr = []
    s.each_char {|c|
   if my_hash.has_key?(c)
        arr << c 
   else
       return false if my_hash[arr.last] != c
       arr.pop()
   end
    }
    arr.empty?
end