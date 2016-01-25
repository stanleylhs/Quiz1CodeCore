var evenNo = function(n){
	var result = [];
	var num = 2
	while (result.length < n){
		result.push(num);
		num += 2;
	}
	return result;
};

console.log(evenNo(5));