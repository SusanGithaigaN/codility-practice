function descendingOrder(n){
    //...
    //   take a num, return in descending order
    // stringify, split into array
    // sort array in desc order, join string to int
    const nums = n.toString().split("");
    //   const desc = nums.sort((a,b)=>a-b); //ascending order
    const desc = nums.sort((a,b)=>b-a);
    const descNums = Number(desc.join(""));
    return descNums;
  }
//   console.log(descendingOrder(34));