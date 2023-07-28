function areYouPlayingBanjo(name) {
    // Implement me
    //   convert str to array
    //   select index 0, assign to variable
    //   use if else to check values
    const str = name.split('');
    string = str.slice(0,1)
        if (string.includes('r') || string.includes('R')){
      return `${name} plays banjo`;
    }else{
      return `${name} does not play banjo`;
    }
    
    return string;
    
  
  }