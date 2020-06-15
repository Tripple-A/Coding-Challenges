const alphaNumeric = {
    "0": 0,
    "1": 1,
    "2": 2,
    "3": 3,
    "4": 4,
    "5": 5,
    "6": 6,
    "7": 7,
    "8": 8,
    "9": 9
}

const convert = str => {
    str = str.split('')
    len = str.length
    ans = 0
    str.forEach((letter,i) => {
      num = alphaNumeric[letter]*(10**(len-1-i))
      ans+=num
    })
    console.log(typeof(ans))
    return ans
}

console.log(convert('12345'))