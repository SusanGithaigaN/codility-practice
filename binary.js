function addBinary(a,b) {
    sum = a+b;
    // binary = (sum>>>0).toString(2);
    binary = sum.toString(2);
    return binary;
  }
//   console.log(addBinary(6,8));