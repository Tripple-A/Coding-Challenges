def get_sum(num1, num2)
    ans = []
    if num1 < 0 && num2 < 0
        neg = true
        num1*=-1
        num2*=-1
    end
 a = sprintf('%b', [num1].pack('L').unpack('L')[0])
 b =sprintf('%b', [num2].pack('L').unpack('L')[0])
 a.length > b.length ? len = a.length : len = b.length 
    i = -1
    carry = 0
 while i >= -len
     sum = a[i].to_i ^ b[i].to_i ^ carry
     ans << sum
     carry = (a[i].to_i & b[i].to_i) | (a[i].to_i & carry) |
         (carry & b[i].to_i)
     i-=1
 end
    ans << carry if carry > 0
    res = ans.reverse.join.to_i(2)
    return res*-1 if neg
    num1 < 0 || num2 < 0? res-= 2**32 : res
end