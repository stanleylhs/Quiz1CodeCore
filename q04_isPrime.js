var isPrime = function(n) {
	if (isNaN(n) || !isFinite(n) || n % 1 || n < 2) return false; 
	if (n % 2 == 0) return (n == 2);
	var m = Math.sqrt(n);
	for (var i = 3;i <= m;i += 2) {
		if (n % i == 0) return false;
	}
	return true;
};

console.log("1 is a prime number. " + isPrime(1));
console.log("5 is a prime number. " + isPrime(5));
console.log("18 is a prime number. " + isPrime(18));

