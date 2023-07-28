function printerError(s) {
    // colors a to m: asign to a variable(array)    
    const colors=['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm'];
    
    //   initialize a variable to count erros
    let errors=0;
    
    //   loop through string to check for errors
    //   check if character is in colors array
    for(let i=0; i< s.length; i++){
      if(!colors.includes(s[i])){
        errors++;
      }
    }
    //   return the error rate as a string/ the length of the control string
    return `${errors}/${s.length}`
  }