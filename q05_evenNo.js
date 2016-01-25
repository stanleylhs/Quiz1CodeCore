var evenNo = function(n){
	var result = [];
	i = n;
	while (i > 0){
		var num = n - i + 1;
		if (num % 2 == 0) {
			result.push(num);
		}
		i--;
	}
	return result;
};

console.log(evenNo(10));