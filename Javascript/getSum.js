function sumIntegers(a, b) {
    if (a === b) {
      return a;
    } else if (a < b) {
      let sum = 0;
      for (let i = a; i <= b; i++) {
        sum += i;
      }
      return sum;
    } else {
      let sum = 0;
      for (let i = b; i <= a; i++) {
        sum += i;
      }
      return sum;
    }
  }
  console.log(sumIntegers(1, 0))
  console.log(sumIntegers(-1, 0))
//   In this code, we first check if a and b are equal, in which case we simply return a or b. If they are not equal, we check which of them is greater using the if-else statement.
  
//   If a is less than b, we initialize a variable sum to 0 and then use a for loop to add all integers from a to b (inclusive) to sum. Finally, we return sum.
  
//   If b is less than a, we do the same thing but with b and a swapped.
  
//   Example usage: