const keypad = {
    0: ['0'],
    1: ['1'],
    2: ['A', 'B', 'C'],
    3: ['D', 'E', 'F'],
    4: ['G', 'H', 'I'],
    5: ['J', 'K', 'L'],
    6: ['M', 'N', 'O'],
    7: ['P', 'Q', 'R', 'S'],
    8: ['T', 'U', 'V'],
    9: ['W', 'X', 'Y', 'Z'],
  };
  
  function telephoneWords(digitString) {
    const digits = digitString.split('');
    const letters = digits.map(digit => keypad[digit]);
    const permutations = [];
  
    function generatePermutations(index, current) {
      if (index === digits.length) {
        permutations.push(current);
        return;
      }
  
      for (let i = 0; i < letters[index].length; i++) {
        generatePermutations(index + 1, current + letters[index][i]);
      }
    }
  
    generatePermutations(0, '');
  
    return permutations;
  }
console.log(telephoneWords(9988));