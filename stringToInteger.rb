def convert(str)
    alpha_numeric = { "0"=> 0,"1" => 1,"2"=> 2,"3"=> 3,"4"=> 4,
                      "5"=> 5,"6"=> 6,"7"=> 7,"8"=> 8,"9"=> 9 }
    total = 0
    len = str.length - 1
    str.split('').each_with_index do |letter,i|
      total += alpha_numeric[letter] * 10 ** (len - i)  
    end
    total
end

p convert('12345') #12345