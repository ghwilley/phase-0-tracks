// create rnd array
// parse array to items
// find longest length
// test each, if greater than prev set = to var
// return longet item

var array = ["long phrase","longest phrase","longer phrase"];
var longest = "";
for (var i = array.length - 1; i >= 0; i--) {
	// longest = array[i];

	// console.log(longest)


	if (array[i].length > longest.length) {
		 longest = array[i];

	}
	else {
		console.log(longest);
	}


}

