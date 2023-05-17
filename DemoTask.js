// you can write to stdout for debugging purposes, e.g.
// console.log('this is a debug message');

function solution(A) {
    // Implement your solution here
    // find array length
    // loop through the entire array length
    // for every value of i, add + 1, check 
    // create a new variable that stores all variables that occur in array A
    const N= A.length;
    const addNum = new Set();

    for(let i=0; i< N; i++){
       if([i] >0) {
        //    return (i + 1);
        addNum.add(A[i])
       }
    }
    for (let i =1; i<=N+1; i++){
        if(!addNum.has(i)){
            return i;
        }
        // return i;
    }
}
console.log(solution([1,2,3,4,5]));