function reverseWords(str){
    //   trim string into array of words, them split string
    //   reverse word order
    //   join reversed words into string
        const result = str.trim().split(' ').reverse().join(' ');
    //   console.log(result);
    return result;
}