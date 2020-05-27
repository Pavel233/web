function isPrimeNumber(i) {
  let isPrime;
  let exit = true;
  if (typeof i === 'number') {
    i = [i];
  } else {
    for (let k in i) {
      if (typeof i[k] !== 'number') {
        console.log('Incorrect data type variable entered');
        exit = false
      }
    }
  } 
  if (exit) { 
    for (let n in i) {
      isPrime = true;
      if (i[n] > 1) {
        for (let j = 2; j < i[n]; j++) {
          if (i[n] % j == 0) {
            isPrime = false;
            break;
          }
        }  
      } else {
        isPrime = false;
      }
      if (isPrime) {
        console.log(i[n] + ' is prime number');
      } else {
        console.log(i[n] + ' is not prime number');
      }
    }
  }
}
