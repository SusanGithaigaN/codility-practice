function getCount(str) {
    //   store all vowels in  a variable
    //   loop through the entire str
    //   check if str includes any of the vowels
    //   return count of vowels
    const array = 'aeiou';
    let count= 0;
    for (let i=0; i<str.length; i++){
      if( array.includes(str[i])){
        count ++;
      }
    }
    
    return count;
  }
    console.log(getCount("Margaret"));

    // solution 2
    // function getCount(str) {
    //     return str.split('').filter(c => "aeiouAEIOU".includes(c)).length;
    //    }


    
    // function getSum(a, b){
  
    //     if(a === b){
    //       return a;
    //     }else{
    //       return b;
    //     }
    //  }

    //  function sumIntegers(a, b) {
    //     if (a === b) {
    //       return a;
    //     } else if (a < b) {
    //       let sum = 0;
    //       for (let i = a; i <= b; i++) {
    //         sum += i;
    //       }
    //       return sum;
    //     } else {
    //       let sum = 0;
    //       for (let i = b; i <= a; i++) {
    //         sum += i;
    //       }
    //       return sum;
    //     }
    //   }
      
