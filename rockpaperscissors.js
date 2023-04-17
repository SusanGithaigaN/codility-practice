const rps = (p1, p2) => {
  //   assign valid moves to a variable
  //   valid moves: rock, paper, scissors
  //   check if player enters valide moves
  const validMove = ["rock", "paper", "scissors"];
  
  if (!validMove.includes(p1) || !validMove.includes(p2)){
    return "Please enter: 'rock', 'paper' or 'scissors'.";
  }
  
  //   check if it's a draw
  if (p1===p2){
     return "Draw!";
  }
  
  //   check the winner
  if (
    (p1 === "rock" && p2 === "scissors") || 
    (p1==="paper" && p2==="rock") ||
    (p1==="scissors" && p2==="paper")
    ){
    return "Player 1 won!";
  }else{
    return "Player 2 won!";
  }

};
// console.log(rps("scissors", "paper"));
// console.log(rps("scissors", "rock")); 
// console.log(rps("paper", "paper")); 


// // solution 2
// const rps = (p1, p2) => {
//   if (p1 == p2)
//     return 'Draw!';
    
//    if (p1 == 'rock' && p2 == 'scissors') 
//      return 'Player 1 won!'
//    else if (p1 == 'scissors' && p2 == 'paper') 
//      return 'Player 1 won!'
//    else if (p1 == 'paper' && p2 == 'rock') 
//      return 'Player 1 won!'
//    else
//      return 'Player 2 won!';
// };




// // convert num to string
// function booleanToString(b){
//   //your code here
//   //   .toString
  
//   const str = b.toString();
//   return str;
// }




// // replace strings
// Solution A
// function DNAtoRNA(dna){
//   return dna.replace(/T/g, 'U');
// }


// // solution B
// function DNAtoRNA(dna) {
//   // create a function which returns an RNA sequence from the given DNA sequence
//   //   split input
//   //   join input using U
//   return dna.split("T").join("U");
// }



// // flower count
// function lovefunc(flower1, flower2){
//   // moment of truth
//   //   take flowers, count petals
//   //   if 1 even & other false== in love
  
//   if(flower1 % 2 ===0 && flower2 % 2 !=0 ){
//     return true;
//   }else if(flower2 % 2 ===0 && flower1 % 2 !=0 ){
//     return true;
//   }else{
//     return false;
//   }
  
// }




// // repeat String
// function repeatStr (n, s) {
//   //   .repeat(), where s is repeated n times
//   return s.repeat(n);
// }


// // You like building blocks. You especially like building blocks that are squares. And what you even like more, is to arrange them into a square of square building blocks!

// // However, sometimes, you can't arrange them into a square. Instead, you end up with an ordinary rectangle! Those blasted things! If you just had a way to know, whether you're currently working in vain… Wait! That's it! You just have to check if your number of building blocks is a perfect square.

// // Task
// // Given an integral number, determine if it's a square number:

// // In mathematics, a square number or perfect square is an integer that is the square of an integer; in other words, it is the product of some integer with itself.

// // The tests will always use some integral number, so don't worry about that in dynamic typed languages
// // solution
// var isSquare = function(n){
//   return Math.sqrt(n) % 1 === 0;
// }