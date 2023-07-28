function accum(s) {
    // split into an array of individual characters ie: ['a','b','c','d']
    // map each element and it's index ie: (a, indexOf(a))
    // convert current char to upCase, increment array index by 1
    // join, with a.toLoweCase() 
	return s.split('').map((x,index) => x.toUpperCase()+Array(index+1).join(x.toLowerCase())).join('-');
}
console.log(accum("abcd"));
console.log(accum("RqaEzty"));
console.log(accum("cwAt")); 