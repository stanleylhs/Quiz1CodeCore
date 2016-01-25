var majorCities = {BC: ["Vancouver", "Victoria", "Prince George"], AB: ["Edmonton", "Calgary"]};
Object.keys(majorCities).forEach(function(elem){
	console.log(elem + " has " + majorCities[elem].length + " main cities.\n");
});

