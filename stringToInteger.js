const alphaNumeric = { "0": 0,"1": 1,"2": 2,"3": 3,"4": 4,
                       "5": 5,"6": 6,"7": 7,"8": 8,"9": 9 }

const convert = str => {
    let len = str.length-1
    let ans = 0
    str = str.split('')
    str.forEach((letter,i) => {
      num = alphaNumeric[letter]*(10**(len-i))
      ans+=num
    })
    console.log(typeof(ans)) //number
    return ans 
}
console.log(convert('12345')) //12345

//Solve using reduce method
const convert = str => {
  let len = str.length-1
  return str.split('').reduce((acc,curr,i) => 
      acc+(alphaNumeric[curr]*(10**(len-i)))
  ,0)
}
console.log(convert('12345')) //12345

// Solve using ASCII equivalents
const convert = str => {
  let num = 0
  for (let i = 0; i < str.length; i++) {
      num = num*10 + (str.charCodeAt(i) - 48)     
  }
  console.log(typeof(num)) //number
  return num 
}
console.log(convert('12345')) //12345
